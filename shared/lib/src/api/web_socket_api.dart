import 'dart:async';
import 'dart:convert';

import 'package:core/core.dart';

import 'request_models/app_request.dart';
import 'response_models/app_response.dart';

part 'web_socket_api.g.dart';

@Riverpod()
class WebSocketApi extends _$WebSocketApi with ControllerMixin {
  @override
  Raw<Stream<AppResponse>> build() {
    final stream = ref.watch(webSocketStreamProvider);

    final newStream = stream.asyncMap((event) async {
      final json = jsonDecode(event);
      final response = AppResponse.fromJson(json);
      logger.debug('Web Socket Message', response.toJson());
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

    sink.add(jsonEncode(request.toJson()));

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

extension WebSocketApiControllerMixinX on ControllerMixin {
  @protected
  WebSocketApi get api =>
      (ref as AutoDisposeRef).watch(webSocketApiProvider.notifier);
}
