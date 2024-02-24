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
