import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:core/core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../src/features/field/domain/field_state_service.dart';

class MyCanvas extends ConsumerStatefulWidget {
  const MyCanvas({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => Aboba();
}

class Aboba extends ConsumerState<MyCanvas> {
  Point? selectedPixel;

  @override
  Widget build(BuildContext context) {
    final asyncImage = ref.watch(fieldStateServiceProvider);

    return asyncImage.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, s) => SText(e.toString()),
      data: (image) {
        return InteractiveViewer(
          maxScale: 100,
          minScale: 1,
          boundaryMargin: const EdgeInsets.all(32),
          child: CustomPaint(
            painter: CanvasPainter(selectedPixel: selectedPixel, image: image),
          ),
        );
      },
    );
  }
}

class CanvasPainter extends CustomPainter {
  CanvasPainter({this.selectedPixel, required this.image});

  Point? selectedPixel;

  late ui.Image image;

  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint();
    p.color = Colors.white;
    p.strokeWidth = 0.1;
    p.style = PaintingStyle.stroke;
    p.isAntiAlias = true;

    final scaleFactor = image.width / image.height;
    canvas.drawImageRect(
      image,
      Rect.fromLTRB(
        0.5,
        0.5,
        image.width.toDouble(),
        image.height.toDouble(),
      ),
      Rect.fromLTRB(0, 0, size.width, size.width / scaleFactor),
      p,
    );

    print(size);
    for (var x = 0; x < image.width; x++) {
      canvas.drawLine(
        Offset(x.toDouble(), 0),
        Offset(
          x.toDouble(),
          image.height.toDouble(),
        ),
        p,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
