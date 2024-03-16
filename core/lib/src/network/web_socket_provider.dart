import 'package:web_socket_channel/web_socket_channel.dart';

import '../../core.dart';

part 'web_socket_provider.g.dart';

const _baseUrl = 'ws://10.0.2.2:8000/ws/';

@Riverpod(keepAlive: true)
Future<WebSocketChannel> webSocketChannel(WebSocketChannelRef ref) async {
  final wsUrl = Uri.parse(_baseUrl);
  final channel = WebSocketChannel.connect(wsUrl);

  ref.onDispose(channel.sink.close);

  await channel.ready;

  return channel;
}

@Riverpod(keepAlive: true)
Raw<Stream> webSocketStream(WebSocketStreamRef ref) {
  return _webSocketStream(ref).asBroadcastStream();
}

Raw<Stream> _webSocketStream(WebSocketStreamRef ref) async* {
  final channel = await ref.watch(webSocketChannelProvider.future);

  final stream = channel.stream;

  stream.doOnCancel(() {
    logger.error(title: 'Cancel WebSocketStream');
  });

  yield* stream;
}

@Riverpod(keepAlive: true)
Future<WebSocketSink> webSocketSink(WebSocketSinkRef ref) async {
  final channel = await ref.watch(webSocketChannelProvider.future);

  return channel.sink;
}
