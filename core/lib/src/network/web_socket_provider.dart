import 'package:web_socket_channel/web_socket_channel.dart';

import '../../core.dart';

part 'web_socket_provider.g.dart';

@riverpod
Future<WebSocketChannel> webSocketChannel(WebSocketChannelRef ref) async {
  final wsUrl = Uri.parse('ws://example.com');
  final channel = WebSocketChannel.connect(wsUrl);

  await channel.ready;

  return channel;
}

@riverpod
Stream<dynamic> webSocketStream(WebSocketStreamRef ref) async* {
  final channel = await ref.watch(webSocketChannelProvider.future);

  ref.listenSelf((_, message) {
    if (message case AsyncData(value: final value)) {
      logger.debug('Web Socket Message', value);
    }
  });

  yield* channel.stream.asBroadcastStream();
}

@riverpod
Future<WebSocketSink> webSocketSink(WebSocketSinkRef ref) async {
  final channel = await ref.watch(webSocketChannelProvider.future);

  return channel.sink;
}
