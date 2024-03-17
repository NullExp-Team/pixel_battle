import 'package:core/core.dart';
import 'package:shared/shared.dart';

import '../features/auth/domain/user_service.dart';

class UserWebSocketApi extends WebSocketApi {
  @override
  Raw<Stream<AppResponse>> build() {
    final stream = _build();
    return stream.asBroadcastStream();
  }

  Raw<Stream<AppResponse>> _build() async* {
    final stream = super.build();

    final userServiceState = ref.read(userServiceProvider);
    final userService = ref.read(userServiceProvider.notifier);

    if (userServiceState != null) {
      // await userService.auth(nickname: userServiceState.nickname);
    }

    yield* stream;
  }
}
