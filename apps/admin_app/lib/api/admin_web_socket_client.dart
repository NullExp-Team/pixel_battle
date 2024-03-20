import 'package:core/core.dart';

import '../app/domain/admin_service.dart';

Future<WebSocketClient> createAdminWebSocketClient(
  FutureProviderRef<WebSocketClient> ref,
) async {
  return createWebSocketClient(
    afterConnect: (client) async {
      // final userService = ref.read(adminServiceProvider.notifier);
      // final userServiceState = ref.read(adminServiceProvider);

      // if (userServiceState != null) {
      //   // await userService.authConnect(client: client);
      // }
    },
  );
}
