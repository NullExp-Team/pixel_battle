import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../api/request_models/app_request.dart';
import '../../../api/request_models/update_pixel_data.dart';
import '../../../api/response_models/app_response.dart';
import '../../../api/response_models/field_pixel.dart';
import '../../../api/web_socket_api.dart';

part 'field_state_service.freezed.dart';
part 'field_state_service.g.dart';

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

    for (var x = 0; x < height; x++) {
      for (var y = 0; y < width; y++) {
        final index = x * width + y;
        pixels[index] = AppColors.light.backgroundMinor.value;
      }
    }

    for (final entry1 in fieldState.pixels.entries) {
      for (final entry2 in entry1.value.entries) {
        final x = entry1.key;
        final y = entry2.key;
        final pixel = entry2.value;
        final index = x * width + y;
        pixels[index] = int.parse(pixel.color.substring(1), radix: 16);
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

@freezed
class FieldStateMap with _$FieldStateMap {
  factory FieldStateMap({
    required int width,
    required int height,
    required Map<int, Map<int, FieldPixel>> pixels,
  }) = _FieldStateMap;
}

@Riverpod(dependencies: [WebSocketApi])
class FieldStateService extends _$FieldStateService with ControllerMixin {
  @override
  Stream<FieldStateMap> build() => _build().asBroadcastStream();

  Stream<FieldStateMap> _build() async* {
    final apiStream = ref.watch(webSocketApiProvider);

    final fieldStateStream = apiStream.whereType<FieldStateResponse>();
    final pixelUpdateStream = apiStream.whereType<PixelUpdateResponse>();

    final rand = Random();
    final timer = Timer.periodic(const Duration(milliseconds: 3000), (timer) {
      final map = state.valueOrNull;
      if (map != null) {
        final x = rand.nextInt(map.width);
        final y = rand.nextInt(map.height);
        api.request<BackendSuccessResponse>(
          UpdatePixelRequest(
            UpdatePixelData(
              x: x,
              y: y,
              color: '#${Colors.red.value.toRadixString(16).substring(2)}',
            ),
          ),
        );
        api.request<NoResponse>(GetFieldStateRequest());
      }
    });

    ref.onDispose(timer.cancel);

    final sub = pixelUpdateStream.listen(
      (res) {
        final map = state.valueOrNull;
        if (map != null) {
          final pixel = res.data;
          final x = pixel.x;
          final y = pixel.y;
          final pixels = map.pixels;
          pixels.putIfAbsent(x, () => {});
          pixels[x]![y] = pixel;

          setData(map.copyWith(pixels: pixels));
        }
      },
    );

    ref.onDispose(sub.cancel);

    // Mock Start
    // final colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];
    // await Future.delayed(const Duration(milliseconds: 800));
    // const width = 200;
    // const height = 200;
    // final fieldStateStream = Stream<FieldStateResponse>.value(
    //   FieldStateResponse(
    //     width: width,
    //     height: height,
    //     data: [
    //       for (int x = 0; x < width; x++)
    //         for (int y = 0; y < height; y++)
    //           FieldPixel(
    //             x: x,
    //             y: y,
    //             color: colors[(x + y) % 4].value,
    //             userId: '',
    //           ),
    //     ],
    //   ),
    // );
    // Mock End

    unawaited(
      Future(() => api.request<NoResponse>(GetFieldStateRequest())),
    );

    yield* fieldStateStream.map(_convertFieldStateToFieldStateMap);
  }

  FieldStateMap _convertFieldStateToFieldStateMap(
    FieldStateResponse fieldState,
  ) {
    // final width = fieldState.width;
    // final height = fieldState.height;
    const width = 64;
    const height = 64;

    final pixels = <int, Map<int, FieldPixel>>{};

    for (final pixel in fieldState.data) {
      final x = pixel.x;
      final y = pixel.y;

      pixels.putIfAbsent(x, () => {});
      pixels[x]![y] = pixel;
    }

    return FieldStateMap(
      width: width,
      height: height,
      pixels: pixels,
    );
  }
}
