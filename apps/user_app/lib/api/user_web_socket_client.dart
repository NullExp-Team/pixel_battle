import 'package:core/core.dart';

import '../features/auth/domain/user_service.dart';

Future<WebSocketClient> createUserWebSocketClient(
  FutureProviderRef<WebSocketClient> ref,
) async {
  final client = await createWebSocketClient(
    afterConnect: (client) async {
      final userService = ref.read(userServiceProvider.notifier);

      await userService.authConnect(client: client);
    },
  );

  return client;
}
