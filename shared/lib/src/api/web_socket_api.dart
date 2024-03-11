import 'dart:async';
import 'dart:convert';

import 'package:core/core.dart';

import 'request_models/app_request.dart';
import 'response_models/app_response.dart';

part 'web_socket_api.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class WebSocketApi extends _$WebSocketApi with ControllerMixin {
  @override
  Raw<Stream<AppResponse>> build() {
    final stream = ref.watch(webSocketStreamProvider);

    final newStream = stream.asyncMap((event) async {
      final json = jsonDecode(event);
      logger.debug('Web Socket Response', json);

      final response = AppResponse.fromJson(json);
      return response;
    }).asBroadcastStream();

    return newStream;
  }

  Future<T> request<T extends AppResponse>(
    AppRequest request, {
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // ignore: close_sinks
    final sink = await ref.watch(webSocketSinkProvider.future);

    final json = jsonEncode(request.toJson());
    logger.debug('Web Socket Request', json);

    sink.add(json);

    if (T == NoResponse) {
      return const NoResponse() as T;
    }

    final response = await state
        .firstWhere((e) => e is T || e is BackendErrorResponse)
        .timeout(timeout);

    if (response is BackendErrorResponse) throw response;

    return response as T;
  }
}

extension WebSocketApiX on ControllerMixin {
  WebSocketApi get api => ref.watch(webSocketApiProvider.notifier);
}
