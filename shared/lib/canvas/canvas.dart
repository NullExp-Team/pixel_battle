import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:core/core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MyCanvas extends ConsumerStatefulWidget {
  const MyCanvas({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => Aboba();
}

class Aboba extends ConsumerState<MyCanvas> {
  Point? selectedPixel;

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      maxScale: 100,
      minScale: 1,
      boundaryMargin: const EdgeInsets.all(32),
      child: CustomPaint(
        painter: CanvasPainter(selectedPixel),
      ),
    );
  }
}

class CanvasPainter extends CustomPainter {
  CanvasPainter(this.selectedPixel);

  Point? selectedPixel;

  late ui.Image image;

  Future<void> test() async {
    const size = Size(200, 100);
    final width = size.width.toInt();
    final height = size.height.toInt();
    final length = width * height;

    final pixels = Uint32List(length);

    final colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];

    for (var i = 0; i < height; i++) {
      for (var j = 0; j < width; j++) {
        pixels[i * width + j] = colors[(i + j) % 4].value;
      }
    }

    await _imageByUint32List(
      size: size,
      pixels: pixels,
    ).then((value) => image = value);
  }

  Future<ui.Image> _imageByUint32List({
    required Size size,
    required Uint32List pixels,
  }) async {
    final completer = Completer<ui.Image>();
    ui.decodeImageFromPixels(
      pixels.buffer.asUint8List(),
      size.width.toInt(),
      size.height.toInt(),
      ui.PixelFormat.bgra8888,
      completer.complete,
    );
    return completer.future;
  }

  @override
  void paint(Canvas canvas, Size size) {
    test();
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
