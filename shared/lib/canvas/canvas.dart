import 'dart:ui' as ui;

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../src/features/field/domain/field_state_service.dart';

class PixelCanvas extends ConsumerStatefulWidget {
  const PixelCanvas({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => PixelCanvasState();
}

class PixelCanvasState extends ConsumerState<PixelCanvas> {
  final TransformationController transformationController =
      TransformationController();
  Offset? selectedPixel;

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
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, s) => SText(e.toString()),
      data: (image) {
        if (isFirstBuild) {
          transformationController.value[13] =
              (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).size.width *
                          (image.height / image.width)) /
                  2;
          isFirstBuild = false;
        }

        return GestureDetector(
          onTapUp: (details) {
            final position =
                pixelPosition(details.localPosition, image.width.toDouble());

            if (Rect.fromLTWH(
              0,
              0,
              image.width.toDouble(),
              image.height.toDouble(),
            ).contains(position)) {
              setState(() {
                if (selectedPixel == position) {
                  selectedPixel = null;
                } else {
                  selectedPixel = position;
                }
              });
            }
          },
          child: InteractiveViewer(
            transformationController: transformationController,
            maxScale: 100,
            minScale: 1,
            boundaryMargin: boundaryMargin(image),
            onInteractionUpdate: (_) => setState(() {}),
            onInteractionEnd: (_) => setState(() {}),
            child: CustomPaint(
              painter: CanvasPainter(
                scale: scale,
                selectedPixel: selectedPixel,
                image: image,
              ),
            ),
          ),
        );
      },
    );
  }

  EdgeInsets boundaryMargin(ui.Image image) {
    final windowSize = MediaQuery.of(context).size;
    return EdgeInsets.fromLTRB(
          windowSize.width / 2,
          windowSize.height / 2,
          windowSize.width / 2,
          -(windowSize.height -
                  windowSize.width * (image.height / image.width)) +
              windowSize.height / 2,
        ) /
        scale;
  }

  Offset pixelPosition(Offset touchPosition, double imageWidth) {
    final scaleFactor = MediaQuery.of(context).size.width / imageWidth;

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

  final double minScaleForGrid = 5;

  @override
  void paint(Canvas canvas, Size size) {
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
    final aspectRatio = image.width / image.height;
    final paint = Paint();

    canvas.clipRect(
      Rect.fromLTRB(
        0,
        0,
        size.width,
        size.width / aspectRatio,
      ),
    );

    canvas.drawAtlas(
      image,
      [
        RSTransform.fromComponents(
          rotation: 0,
          scale: size.width / image.width,
          anchorX: 0,
          anchorY: 0,
          translateX: 0,
          translateY: 0,
        ),
      ],
      [
        Rect.fromLTRB(
          0,
          0,
          size.width,
          size.width / aspectRatio,
        ),
      ],
      null,
      null,
      null,
      paint,
    );
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
