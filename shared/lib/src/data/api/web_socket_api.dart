import 'dart:convert';

import 'package:core/core.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../../shared.dart';

part 'web_socket_api.g.dart';

@Riverpod()
class WebSocketApi extends _$WebSocketApi with ControllerMixin {
  @override
  Stream<AppResponse> build() async* {
    final channel = await ref.watch(webSocketChannelProvider.future);

    _sink = channel.sink;

    ref.listenSelf((_, message) {
      if (message case AsyncData(value: final value)) {
        logger.debug('Web Socket Message', value);
      }
    });

    _stream = channel.stream.asyncMap((event) async {
      final json = jsonDecode(event);
      final response = AppResponse.fromJson(json);
      return response;
    }).asBroadcastStream();

    yield* _stream;
  }

  late final WebSocketSink _sink;

  late final Stream<AppResponse> _stream;

  Future<T> request<T extends AppResponse>(
    AppRequest request, {
    Duration timeout = const Duration(seconds: 30),
  }) async {
    _sink.add(request.toJson());
    final response = await _stream
        .firstWhere((e) => e is T || e is BackendErrorResponse)
        .timeout(timeout);
    if (response is BackendErrorResponse) throw response;

    return response as T;
  }
}
