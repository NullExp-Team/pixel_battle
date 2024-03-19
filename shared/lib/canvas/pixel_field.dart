import 'dart:io';
import 'dart:ui' as ui;

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../shared.dart';

class PixelField extends ConsumerStatefulWidget {
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
  final Function(Offset?) onPixelSelectionChanged;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => PixelFieldState();
}

class PixelFieldState extends ConsumerState<PixelField> {
  late final TransformationController transformationController =
      widget.transformationController ?? TransformationController();

  bool isFirstBuild = true;

  double get scale {
    return transformationController.value.getMaxScaleOnAxis();
  }

  Offset get offset {
    return Offset(
      transformationController.value[12],
      transformationController.value[13],
    );
  }

  @override
  Widget build(BuildContext context) {
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

            if (isFirstBuild) {
              transformationController.value[13] =
                  (size.height - size.width * (image.height / image.width)) / 2;
              isFirstBuild = false;
            }

            return GestureDetector(
              onTapUp: (details) {
                final position = pixelPosition(
                  details.localPosition,
                  image.width.toDouble(),
                  size,
                );

                if (Rect.fromLTWH(
                  0,
                  0,
                  image.width.toDouble(),
                  image.height.toDouble(),
                ).contains(position)) {
                  if (widget.selectedPixel == position) {
                    widget.onPixelSelectionChanged(null);
                  } else {
                    widget.onPixelSelectionChanged(position);
                  }
                }
              },
              child: InteractiveViewer(
                transformationController: transformationController,
                maxScale: widget.maxScale,
                minScale: widget.minScale,
                boundaryMargin: boundaryMargin(image, size),
                child: HookBuilder(
                  builder: (context) {
                    useListenable(transformationController);

                    return CustomPaint(
                      size: size,
                      painter: CanvasPainter(
                        scale: scale,
                        selectedPixel: widget.selectedPixel,
                        image: image,
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }

  EdgeInsets boundaryMargin(ui.Image image, Size size) {
    final k = (image.height / image.width);
    print(scale);

    final windowSize = size;
    return EdgeInsets.fromLTRB(
          windowSize.width / 2,
          windowSize.height / 2,
          windowSize.width / 2,
          windowSize.height / 2 -
              windowSize.height * scale +
              windowSize.width * scale,
        ) /
        scale;
  }

  Offset pixelPosition(Offset touchPosition, double imageWidth, Size size) {
    final scaleFactor = size.width / imageWidth;

    final canvasTouchPosition = Offset(
      (touchPosition.dx - offset.dx) / scale,
      (touchPosition.dy - offset.dy) / scale,
    );

    return Offset(
      (canvasTouchPosition.dx / scaleFactor).floorToDouble(),
      (canvasTouchPosition.dy / scaleFactor).floorToDouble(),
    );
  }
}

class CanvasPainter extends CustomPainter {
  CanvasPainter({required this.scale, this.selectedPixel, required this.image});

  double scale;
  Offset? selectedPixel;
  late ui.Image image;

  final double minScaleForGrid = 4.5;

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
    gridPaint.color = Colors.white.withOpacity(1);
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
