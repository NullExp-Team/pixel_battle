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
    required Map<Position, List<String>> selections,
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
    final selectionUpdateStream =
        apiStream.whereType<SelectionUpdateResponse>();

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

    final sub2 = selectionUpdateStream.listen(
      (res) {
        final map = state.valueOrNull;
        if (map == null) {
          return;
        }
        final newSelections = {...map.selections};

        void removeUser(Map<Position, List<String>> selections, String user) {
          final position = selections.keys.firstWhereOrNull(
            (pos) => selections[pos]?.contains(user) ?? false,
          );

          if (position == null) return;
          selections[position]?.remove(user);
          if (selections[position]?.isEmpty ?? false) {
            selections.remove(position);
          }
        }

        void addUser(
          Map<Position, List<String>> selections,
          Position pos,
          String user,
        ) {
          selections[pos] = [...?selections[pos], user];
        }

        removeUser(newSelections, res.data.nickname);
        if (res.data.position != null) {
          addUser(newSelections, res.data.position!, res.data.nickname);
        }

        setData(map.copyWith(selections: newSelections));
      },
    );

    ref.onDispose(sub.cancel);
    ref.onDispose(sub2.cancel);

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
    final selections = <Position, List<String>>{};

    for (final pixel in fieldState.data.pixels) {
      final x = pixel.position.x;
      final y = pixel.position.y;

      pixels.putIfAbsent(x, () => {});
      pixels[x]![y] = pixel;
    }

    for (final selection in fieldState.data.selections) {
      final position = selection.position;
      if (position == null) continue;

      selections[position] = [...?selections[position], selection.nickname];
    }

    return FieldStateMap(
      width: width,
      height: height,
      pixels: pixels,
      selections: selections,
    );
  }
}
