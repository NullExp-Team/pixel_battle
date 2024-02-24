import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../../shared.dart';

part 'field_state_service.g.dart';

@Riverpod()
class FieldStateService extends _$FieldStateService with ControllerMixin {
  @override
  Stream<ui.Image> build() async* {
    // TODO: Заменить
    // final fieldStateStream =
    //     ref.watch(webSocketApiProvider).whereType<FieldStateResponse>();

    // Mock Start
    final random = Random();
    final colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];
    await Future.delayed(const Duration(milliseconds: 800));
    const width = 300;
    const height = 700;
    final fieldStateStream = Stream<FieldStateResponse>.value(
      FieldStateResponse(
        width: width,
        height: height,
        data: [
          for (int i = 0; i < 500; i++)
            FieldPixel(
              x: random.nextInt(width),
              y: random.nextInt(height),
              color: colors.random.value,
              userId: '',
            ),
        ],
      ),
    );
    // Mock End

    await for (final fieldState in fieldStateStream) {
      yield await _convertFieldStateToImage(fieldState);
    }
  }

  Future<ui.Image> _convertFieldStateToImage(
    FieldStateResponse fieldState,
  ) async {
    final width = fieldState.width;
    final height = fieldState.height;
    final length = width * height;

    final pixels = Uint32List(length);

    for (var x = 0; x < height; x++) {
      for (var y = 0; y < width; y++) {
        final index = x * width + y;
        pixels[index] = Colors.white.value;
      }
    }

    for (final pixel in fieldState.data) {
      final index = pixel.x * width + pixel.y;
      pixels[index] = pixel.color;
    }

    final image = await _imageByUint32List(
      width: width,
      height: height,
      pixels: pixels,
    );

    return image;
  }

  Future<ui.Image> _imageByUint32List({
    required int width,
    required int height,
    required Uint32List pixels,
  }) async {
    final completer = Completer<ui.Image>();
    ui.decodeImageFromPixels(
      pixels.buffer.asUint8List(),
      width,
      height,
      ui.PixelFormat.bgra8888,
      completer.complete,
    );
    return completer.future;
  }
}
