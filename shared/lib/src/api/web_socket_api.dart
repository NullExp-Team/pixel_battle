import 'dart:async';
import 'dart:convert';

import 'package:core/core.dart';

// ignore: implementation_imports, depend_on_referenced_packages
import 'package:ws/src/client/ws_client_interface.dart';

import 'request_models/app_request.dart';
import 'response_models/app_response.dart';

part 'web_socket_api.g.dart';

@Riverpod()
class WebSocketApi extends _$WebSocketApi with ControllerMixin {
  @override
  Raw<Stream<AppResponse>> build() {
    return _build().asBroadcastStream();
  }

  Stream<AppResponse> _build() async* {
    final stream = await ref
        .watch(webSocketClientProvider.selectAsync((data) => data.stream));

    final mappedStream = _mapStream(stream);

    yield* mappedStream;
  }

  Stream<AppResponse> _mapStream(WebSocketMessagesStream stream) async* {
    final newStream = stream.asyncMap((event) async {
      final json = jsonDecode(event.toString());
      final response = AppResponse.fromJson(json);
      return response;
    }).asBroadcastStream();

    yield* newStream;
  }

  Future<T> request<T extends AppResponse>(
    AppRequest request, {
    IWebSocketClient? client,
    Duration timeout = const Duration(seconds: 30),
  }) async {
    client ??= await ref.watch(webSocketClientProvider.future);

    final json = jsonEncode(request.toJson());

    final stream = client != null ? _mapStream(client.stream) : state;

    await client!.add(json);

    if (T == NoResponse) {
      return const NoResponse() as T;
    }

    final response = await stream
        .firstWhere((e) => e is T || e is BackendErrorResponse)
        .timeout(timeout);

    if (response is BackendErrorResponse) throw response;

    return response as T;
  }

  Future<void> refreshConnection({
    Duration timeout = const Duration(seconds: 30),
  }) async {
    final isInit = ref.read(
      webSocketClientProvider.select((value) => value.hasValue),
    );

    // Если не готово, то подключение ещё в процессе и рефреш не нужен
    if (!isInit) return;

    // ignore: close_sinks
    final client = await ref.watch(webSocketClientProvider.future);

    await client.reconnect();
  }
}

// extension WebSocketApiX on ControllerMixin {
//   WebSocketApi get api => ref.watch(webSocketApiProvider.notifier);
// }
