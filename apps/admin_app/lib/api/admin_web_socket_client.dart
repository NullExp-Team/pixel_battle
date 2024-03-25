import 'package:core/core.dart';

import '../app/controller/admin_controller.dart';

Future<WebSocketClient> createAdminWebSocketClient(
  FutureProviderRef<WebSocketClient> ref,
) async {
  return createWebSocketClient(
    afterConnect: (client) async {
      final controller = ref.read(adminControllerProvider.notifier);

      await controller.login(client: client);
    },
  );
}
