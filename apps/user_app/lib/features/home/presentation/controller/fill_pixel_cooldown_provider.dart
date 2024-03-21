import 'dart:async';

import 'package:core/core.dart';
import 'package:shared/shared.dart';

part 'fill_pixel_cooldown_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [WebSocketApi])
Stream<Duration> fillPixelCooldown(FillPixelCooldownRef ref) {
  final apiStream = ref.watch(webSocketApiProvider);

  final fieldStateCooldownStream =
      apiStream.whereType<FieldStateResponse>().map((event) => event.cooldown);

  final cooldownUpdateStream =
      apiStream.whereType<CooldownUpdateResponse>().map((event) => event.data);

  final cooldownStream =
      fieldStateCooldownStream.mergeWith([cooldownUpdateStream]);

  final cooldownDurationStream =
      cooldownStream.map((event) => Duration(seconds: event));

  final api = ref.watch(webSocketApiProvider.notifier);

  unawaited(api.request(GetCooldownRequest()));

  return cooldownDurationStream;
}
