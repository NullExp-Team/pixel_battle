import 'dart:async';

import 'package:core/core.dart';

import '../../../api/request_models/app_request.dart';
import '../../../api/response_models/app_response.dart';
import '../../../api/web_socket_api.dart';

part 'fill_pixel_cooldown_provider.g.dart';

@Riverpod()
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
