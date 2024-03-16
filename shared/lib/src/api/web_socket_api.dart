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
    return _build().asBroadcastStream();
  }

  Stream<AppResponse> _build() async* {
    final stream = await ref
        .watch(webSocketClientProvider.selectAsync((data) => data.stream));

    final newStream = stream.asyncMap((event) async {
      final json = jsonDecode(event.toString());
      final response = AppResponse.fromJson(json);
      return response;
    }).asBroadcastStream();

    yield* newStream;
  }

  Future<T> request<T extends AppResponse>(
    AppRequest request, {
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // ignore: close_sinks
    final client = await ref.watch(webSocketClientProvider.future);

    final json = jsonEncode(request.toJson());
    await client.add(json);

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
