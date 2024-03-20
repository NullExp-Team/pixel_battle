import 'package:core/core.dart';

import '../features/auth/domain/user_service.dart';

Future<WebSocketClient> createUserWebSocketClient(
  FutureProviderRef<WebSocketClient> ref,
) async {
  return createWebSocketClient(
    afterConnect: (client) async {
      final userService = ref.read(userServiceProvider.notifier);
      final userServiceState = ref.read(userServiceProvider);

      if (userServiceState != null) {
        await userService.authConnect(client: client);
      }
    },
  );
}
