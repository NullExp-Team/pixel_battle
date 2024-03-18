import '../../core.dart';

part 'web_socket_provider.g.dart';

const _baseUrl = 'ws://pixel-battle.k-lab.su/ws/';

@Riverpod(keepAlive: true)
Future<WebSocketClient> webSocketClient(WebSocketClientRef ref) async {
  final client = WebSocketClient(
    WebSocketOptions.common(
      connectionRetryInterval: (
        max: const Duration(seconds: 1),
        min: Duration.zero,
      ),
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

  await client.connect(_baseUrl);

  // ref.onDispose(() {
  //   client.close();

  //   logger.log(
  //     LogType.info,
  //     title: 'WebSocket Metrics',
  //     message: client.metrics.toJson(),
  //   );
  // });

  return client;
}

extension WebSocketClientX on WebSocketClient {
  Future<void> reconnect() async {
    if (state is WebSocketClientState$Open) await disconnect();
    await connect(_baseUrl);
  }
}
