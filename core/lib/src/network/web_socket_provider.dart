import 'package:web_socket_channel/web_socket_channel.dart';

import '../../core.dart';

part 'web_socket_provider.g.dart';

const _baseUrl = 'ws://10.0.2.2:8000/ws/';

@riverpod
Future<WebSocketChannel> webSocketChannel(WebSocketChannelRef ref) async {
  final wsUrl = Uri.parse(_baseUrl);
  final channel = WebSocketChannel.connect(wsUrl);

  ref.onDispose(channel.sink.close);

  await channel.ready;

  return channel;
}

@riverpod
Raw<Stream> webSocketStream(WebSocketStreamRef ref) async* {
  final channel = await ref.watch(webSocketChannelProvider.future);

  yield* channel.stream.asBroadcastStream();
}

@riverpod
Future<WebSocketSink> webSocketSink(WebSocketSinkRef ref) async {
  final channel = await ref.watch(webSocketChannelProvider.future);

  return channel.sink;
}
