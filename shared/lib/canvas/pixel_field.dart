import 'dart:io';
import 'dart:math';
import 'dart:ui' as ui;

import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../shared.dart';

class PixelField extends HookConsumerWidget {
  const PixelField({
    super.key,
    this.transformationController,
    required this.maxScale,
    required this.minScale,
    required this.selectedPixel,
    required this.selections,
    required this.onPixelSelectionChanged,
    required this.username,
  });

  final TransformationController? transformationController;

  final double maxScale;
  final double minScale;

  final Offset? selectedPixel;
  final Map<Position, List<String>> selections;
  final String username;

  final Function(Offset) onPixelSelectionChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hookTransformationController = useTransformationController();

    final transformController =
        transformationController ?? hookTransformationController;

    double getScale() => transformController.value.getMaxScaleOnAxis();

    EdgeInsets boundaryMargin(ui.Image image, Size size) {
      final scale = getScale();
      return EdgeInsets.fromLTRB(
            size.width / 2,
            size.height / 2,
            size.width / 2,
            size.height / 2 - size.height * scale + size.width * scale,
          ) /
          scale;
    }

    Offset pixelPosition(Offset touchPosition, double imageWidth, Size size) {
      final scale = getScale();

      final scaleFactor = size.width / imageWidth;

      final offset = transformController.value.getTranslation();

      final canvasTouchPosition = Offset(
        (touchPosition.dx - offset.x) / scale,
        (touchPosition.dy - offset.y) / scale,
      );

      return Offset(
        (canvasTouchPosition.dx / scaleFactor).floorToDouble(),
        (canvasTouchPosition.dy / scaleFactor).floorToDouble(),
      );
    }

    final asyncImage = ref.watch(fieldImageServiceProvider);

    return asyncImage.when(
      skipLoadingOnReload: true,
      skipError: true,
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, s) => SText(e.toString()),
      data: (image) {
        return LayoutBuilder(
          builder: (context, constraints) {
            final size = Size(constraints.maxWidth, constraints.maxHeight);

            return HookBuilder(
              builder: (context) {
                useEffect(
                  () {
                    transformController.value[13] = (size.height -
                            size.width * (image.height / image.width)) /
                        2;
                  },
                  const [],
                );

                return GestureDetector(
                  onTapUp: (details) {
                    final position = pixelPosition(
                      details.localPosition,
                      image.width.toDouble(),
                      size,
                    );

                    final rect = Rect.fromLTWH(
                      0,
                      0,
                      image.width.toDouble(),
                      image.height.toDouble(),
                    );

                    if (rect.contains(position)) {
                      onPixelSelectionChanged(position);
                    }
                  },
                  child: HookBuilder(
                    builder: (context) {
                      useListenable(transformController);

                      return InteractiveViewer(
                        transformationController: transformController,
                        maxScale: maxScale,
                        minScale: minScale,
                        boundaryMargin: boundaryMargin(image, size),
                        child: CustomPaint(
                          size: size,
                          painter: CanvasPainter(
                              scale: getScale(),
                              gridColor: context.colors.divider,
                              selectedPixel: selectedPixel,
                              image: image,
                              selections: selections,
                              username: username),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

class CanvasPainter extends CustomPainter {
  CanvasPainter({
    this.selectedPixel,
    required this.scale,
    required this.gridColor,
    required this.image,
    required this.selections,
    required this.username,
  });

  final Offset? selectedPixel;
  final double scale;
  final Color gridColor;
  final ui.Image image;
  final Map<Position, List<String>> selections;
  final String username;

  final double minScaleForGrid = 6;

  final List<Color> userColors = const [
    Color(0xFFEA6161),
    Color(0xFFEAB361),
    Color(0xFFECC746),
    Color(0xFF81D279),
    Color(0xFF7EC8B1),
    Color(0xFF7EACCE),
    Color(0xFF4B48D2),
    Color(0xFF8B6CB3),
    Color(0xFFB867A6),
    Color(0xFF8D8D8D)
  ];

  @override
  void paint(Canvas canvas, ui.Size size) {
    final scaleFactor = size.width / image.width;

    drawImage(canvas, size);

    if (scale > minScaleForGrid) {
      drawGrid(canvas, size, scaleFactor);
    }

    for (final position in selections.keys) {
      final nicknames = selections[position];
      if (nicknames == null) continue;

      final firstNickname = nicknames.firstOrNull;
      if (firstNickname == null) continue;
      if (firstNickname == username) continue;

      drawSelection(
        canvas,
        Offset(position.x.toDouble(), position.y.toDouble()),
        scaleFactor,
        userColors[firstNickname.hashCode % userColors.length],
      );
    }

    if (selectedPixel != null) {
      drawSelection(
        canvas,
        selectedPixel!,
        scaleFactor,
        Colors.black,
      );
    }

    if (scale > 1.5) {
      for (final position in selections.keys) {
        final nicknames = selections[position];
        if (nicknames == null) continue;

        final firstNickname = nicknames.firstOrNull;
        if (firstNickname == null) continue;
        if (firstNickname == username) continue;

        var text = firstNickname;
        if (nicknames.length > 1) {
          text += ',+${nicknames.length - 1}';
        }

        drawText(
          text,
          canvas,
          Offset(position.x.toDouble(), position.y.toDouble()),
          scaleFactor,
          userColors[firstNickname.hashCode % userColors.length],
          size,
        );
      }
    }
  }

  void drawImage(Canvas canvas, Size size) {
    var width = image.width;
    var offset = Offset.zero;

    if (!kIsWeb && Platform.isIOS) {
      width -= 1;
      offset = const Offset(-0.5, -0.5);
    }

    final scale = size.width / width;
    canvas.scale(scale, scale);
    canvas.drawImage(image, offset, Paint());
    canvas.scale(1 / scale, 1 / scale);
  }

  void drawGrid(Canvas canvas, Size size, double scaleFactor) {
    final strokeWidth = 1 / scale;
    final gridPaint = Paint();
    gridPaint.color = gridColor;
    gridPaint.strokeWidth = strokeWidth;
    gridPaint.style = PaintingStyle.stroke;

    for (var x = 0; x <= image.width; x++) {
      canvas.drawLine(
        Offset(x.toDouble() * scaleFactor, -strokeWidth / 2),
        Offset(
          x.toDouble() * scaleFactor,
          image.height.toDouble() * scaleFactor + strokeWidth / 2,
        ),
        gridPaint,
      );
    }

    for (var y = 0; y <= image.height; y++) {
      canvas.drawLine(
        Offset(-strokeWidth / 2, y * scaleFactor),
        Offset(
          image.width.toDouble() * scaleFactor + strokeWidth / 2,
          y.toDouble() * scaleFactor,
        ),
        gridPaint,
      );
    }
  }

  void drawText(
    String aboba,
    Canvas canvas,
    Offset pixel,
    double scaleFactor,
    Color color,
    Size size,
  ) {
    final textScale = scale * scaleFactor;
    final textOffset = Offset(
      pixel.dx * textScale - 3,
      (pixel.dy + 1) * textScale + (3.0 / (scale * 2)),
    );
    final backgroundPaint = Paint();
    backgroundPaint.color = color;

    final span = TextSpan(
      text: aboba,
      style: TextStyle(
        fontSize: 14,
        fontWeight: ui.FontWeight.w600,
        color: Colors.white,
        backgroundColor: color,
      ),
    );
    final painter = TextPainter(
      text: span,
      maxLines: 1,
      textAlign: TextAlign.left,
      textDirection: ui.TextDirection.ltr,
    );

    painter.layout();

    canvas.scale(1 / scale, 1 / scale);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          textOffset.dx,
          textOffset.dy + 6,
          painter.width + 8,
          painter.height + 4,
        ),
        const ui.Radius.circular(6),
      ),
      backgroundPaint,
    );

    painter.paint(
      canvas,
      Offset(
        textOffset.dx + 4,
        textOffset.dy + 8,
      ),
    );

    canvas.scale(scale, scale);
  }

  void drawSelection(
    Canvas canvas,
    Offset pixel,
    double scaleFactor,
    Color color,
  ) {
    final strokeWidth = (3 / scale) * scale.clamp(0.75, 1);
    final blackPaint = Paint();
    blackPaint.color = color;
    blackPaint.strokeWidth = strokeWidth;
    blackPaint.style = PaintingStyle.stroke;

    final whitePaint = Paint();
    whitePaint.color = Colors.white;
    whitePaint.strokeWidth = strokeWidth;
    whitePaint.style = PaintingStyle.stroke;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          pixel.dx * scaleFactor - strokeWidth / 2,
          pixel.dy * scaleFactor - strokeWidth / 2,
          1 * scaleFactor + strokeWidth,
          1 * scaleFactor + strokeWidth,
        ),
        Radius.circular(strokeWidth * 3 * scale.clamp(0.5, 2)),
      ),
      blackPaint,
    );
    print(scale);

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          pixel.dx * scaleFactor + strokeWidth / 2,
          pixel.dy * scaleFactor + strokeWidth / 2,
          1 * scaleFactor - strokeWidth,
          1 * scaleFactor - strokeWidth,
        ),
        Radius.circular(strokeWidth * 3 * scale.clamp(0.5, 2) - strokeWidth),
      ),
      whitePaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
