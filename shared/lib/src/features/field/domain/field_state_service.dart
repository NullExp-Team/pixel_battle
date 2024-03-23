import 'dart:async';

import 'package:core/core.dart';

import '../../../api/request_models/app_request.dart';
import '../../../api/response_models/app_response.dart';
import '../../../api/response_models/field_pixel.dart';
import '../../../api/response_models/position.dart';
import '../../../api/web_socket_api.dart';

part 'field_state_service.freezed.dart';
part 'field_state_service.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
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
  bool updateShouldNotify(
    AsyncValue<FieldStateMap> previous,
    AsyncValue<FieldStateMap> next,
  ) =>
      true;

  WebSocketApi get api => ref.watch(webSocketApiProvider.notifier);

  @override
  Stream<FieldStateMap> build() => _build().asBroadcastStream();

  Stream<FieldStateMap> _build() async* {
    final apiStream = ref.watch(webSocketApiProvider);

    final fieldStateStream = apiStream.whereType<FieldStateResponse>();
    final pixelUpdateStream = apiStream.whereType<PixelUpdateResponse>();

    final sub = pixelUpdateStream.listen(
      (res) {
        final map = state.valueOrNull;
        if (map != null) {
          final pixel = res.data;
          final x = pixel.x;
          final y = pixel.y;
          final pixels = map.pixels;
          pixels.putIfAbsent(x, () => {});
          pixels[x]![y] = FieldPixel(
            position: Position(x: pixel.x, y: pixel.y),
            color: pixel.color,
            nickname: pixel.nickname,
          );

          setData(map.copyWith(pixels: pixels));
        }
      },
    );

    ref.onDispose(sub.cancel);

    unawaited(
      api.request<NoResponse>(GetFieldStateRequest()),
    );

    yield* fieldStateStream.map(_convertFieldStateToFieldStateMap);
  }

  FieldStateMap _convertFieldStateToFieldStateMap(
    FieldStateResponse fieldState,
  ) {
    final [width, height] = fieldState.size;

    final pixels = <int, Map<int, FieldPixel>>{};

    for (final pixel in fieldState.data.pixels) {
      final x = pixel.position.x;
      final y = pixel.position.y;

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
