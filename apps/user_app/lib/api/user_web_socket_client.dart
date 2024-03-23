import 'dart:async';

import 'package:core/core.dart';

import '../features/auth/domain/user_service.dart';

Future<WebSocketClient> createUserWebSocketClient(
  AutoDisposeFutureProviderRef<WebSocketClient> ref,
) async {
  final keepAlive = ref.keepAlive();

  final client = await createWebSocketClient(
    afterConnect: (client) async {
      final userService = ref.read(userServiceProvider.notifier);

      await userService.authConnect(client: client);
    },
  );

  Timer? timer;
  ref.onResume(() => timer?.cancel());
  ref.onCancel(
    () => timer = Timer(const Duration(seconds: 3), keepAlive.close),
  );
  ref.onDispose(client.close);

  return client;
}
