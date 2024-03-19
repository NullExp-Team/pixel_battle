import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:core/core.dart';

import '../../../api/web_socket_api.dart';
import 'field_state_service.dart';

part 'field_image_service.g.dart';

@Riverpod(dependencies: [WebSocketApi])
class FieldImageService extends _$FieldImageService with ControllerMixin {
  @override
  Future<ui.Image> build() async {
    final map = await ref.watch(fieldStateServiceProvider.future);

    return _convertFieldStateToImage(map);
  }

  Future<ui.Image> _convertFieldStateToImage(
    FieldStateMap fieldState,
  ) async {
    // final width = fieldState.width;
    // final height = fieldState.height;
    const width = 64;
    const height = 64;
    const length = width * height;

    final pixels = Uint32List(length);

    for (var y = 0; y < width; y++) {
      for (var x = 0; x < height; x++) {
        final index = y * width + x;
        pixels[index] = 0xFFFFFFFF;
      }
    }

    for (final entry1 in fieldState.pixels.entries) {
      for (final entry2 in entry1.value.entries) {
        final x = entry1.key;
        final y = entry2.key;
        final pixel = entry2.value;
        final index = y * width + x;
        pixels[index] = pixel.color.value;
      }
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
