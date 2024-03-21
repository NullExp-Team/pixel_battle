import 'dart:io';
import 'dart:ui' as ui;

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../shared.dart';

class PixelField extends HookConsumerWidget {
  const PixelField({
    super.key,
    this.transformationController,
    required this.maxScale,
    required this.minScale,
    required this.selectedPixel,
    required this.onPixelSelectionChanged,
  });

  final TransformationController? transformationController;

  final double maxScale;
  final double minScale;

  final Offset? selectedPixel;
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
                          ),
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
  });

  final Offset? selectedPixel;
  final double scale;
  final Color gridColor;
  final ui.Image image;

  final double minScaleForGrid = 6;

  @override
  void paint(Canvas canvas, ui.Size size) {
    final scaleFactor = size.width / image.width;

    drawImage(canvas, size);

    if (scale > minScaleForGrid) {
      drawGrid(canvas, size, scaleFactor);
    }

    if (selectedPixel != null) {
      drawSelection(canvas, selectedPixel!, scaleFactor);
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

  void drawSelection(Canvas canvas, Offset pixel, double scaleFactor) {
    final strokeWidth = 3 / scale;
    final blackPaint = Paint();
    blackPaint.color = Colors.black;
    blackPaint.strokeWidth = strokeWidth;
    blackPaint.style = PaintingStyle.stroke;

    final whitePaint = Paint();
    whitePaint.color = Colors.white;
    whitePaint.strokeWidth = strokeWidth;
    whitePaint.style = PaintingStyle.stroke;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          pixel.dx * scaleFactor - strokeWidth,
          pixel.dy * scaleFactor - strokeWidth,
          1 * scaleFactor + strokeWidth * 2,
          1 * scaleFactor + strokeWidth * 2,
        ),
        Radius.circular(strokeWidth * 2),
      ),
      blackPaint,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          pixel.dx * scaleFactor,
          pixel.dy * scaleFactor,
          1 * scaleFactor,
          1 * scaleFactor,
        ),
        Radius.circular(strokeWidth),
      ),
      whitePaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
