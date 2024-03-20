// ignore: implementation_imports
import 'package:ws/src/client/ws_client_interface.dart';

import '../../core.dart';

part 'web_socket_provider.g.dart';

const _baseUrl = 'ws://pixel-battle.k-lab.su/ws/';

@Riverpod(keepAlive: true)
Future<WebSocketClient> webSocketClient(WebSocketClientRef ref) async {
  throw UnimplementedError();
}

Future<WebSocketClient> createWebSocketClient({
  FutureOr<void> Function(IWebSocketClient)? afterConnect,
}) async {
  final client = WebSocketClient(
    WebSocketOptions.common(
      afterConnect: afterConnect,
      connectionRetryInterval: (
        max: const Duration(seconds: 10),
        min: const Duration(seconds: 1),
      ),
      timeout: const Duration(seconds: 15),
      interceptors: [
        WSInterceptor.wrap(
          onMessage: (data) {
            logger.log(
              Log.response,
              title: _baseUrl,
              message: data,
            );
          },
          onSend: (data) {
            logger.log(
              Log.request,
              title: _baseUrl,
              message: data,
            );
          },
        ),
      ],
    ),
  );

  client.stateChanges.listen((value) {
    logger.log(
      Log.info,
      message: value.toString(),
    );
  });

  await client.connect(_baseUrl);

  return client;
}

extension WebSocketClientX on WebSocketClient {
  Future<void> reconnect() async {
    if (state is WebSocketClientState$Open) await disconnect();
    await connect(_baseUrl);
  }
}
