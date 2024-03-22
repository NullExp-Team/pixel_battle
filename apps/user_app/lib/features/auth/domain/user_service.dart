import 'dart:async';

import 'package:core/core.dart';
import 'package:shared/shared.dart';

// ignore: implementation_imports, depend_on_referenced_packages
import 'package:ws/src/client/ws_client_interface.dart';

part 'user_service.freezed.dart';
part 'user_service.g.dart';

@freezed
class UserServiceState with _$UserServiceState {
  factory UserServiceState({
    required String nickname,
    required String userId,
    required bool isBanned,
  }) = _UserServiceState;

  factory UserServiceState.fromJson(Map<String, dynamic> json) =>
      _$UserServiceStateFromJson(json);
}

@Riverpod(keepAlive: true)
class UserService extends _$UserService
    with ControllerMixin, PersistenceMixin<UserServiceState?> {
  Completer<void>? _completer;

  @override
  UserServiceState? build() => persistentBuild(
        () => null,
        fromJson: UserServiceState.fromJson,
      );

  void completeAuth([Object? error]) {
    if (_completer?.isCompleted ?? true) return;

    if (error != null) {
      _completer?.completeError(error);
    } else {
      _completer?.complete();
    }
  }

  @useInApiWrap
  Future<void> authConnect({
    required IWebSocketClient client,
  }) async {
    final curState = state;

    if (curState == null) {
      completeAuth();
      return;
    }

    if (curState.isBanned) await Future.delayed(const Duration(seconds: 10));

    await apiWrapStrictSingle(
      () => api.request<BackendSuccessResponse>(
        client: client,
        LoginRequest(
          LoginData(
            nickname: curState.nickname,
            userId: curState.userId,
          ),
        ),
      ),
      onSuccess: (res) {
        completeAuth();
        state = state?.copyWith(isBanned: false);
      },
      showErrorToast: false,
      onError: (error) {
        completeAuth(error);

        switch (error) {
          case InternalError(
              error: BackendErrorResponse(message: 'User not found')
            ):
            state = null;
            toast.error(
              title: 'Пользователь не найден',
              text: 'Попробуйте авторизоваться заново',
            );

          case InternalError(
              error: BackendErrorResponse(message: 'User is banned')
            ):
            if (curState.isBanned) return;
            toast.error(title: 'Пользователь заблокирован');
            state = state?.copyWith(isBanned: true);

          default:
            throw error;
        }
      },
    );
  }

  @useInApiWrap
  Future<void> login({
    required String nickname,
  }) async {
    final curState = state;

    final isAuthorized = curState != null;

    if (isAuthorized && curState.isBanned) {
      toast.error(title: 'Пользователь заблокирован');
    }

    state = state?.copyWith(nickname: nickname);

    _completer = Completer<void>();

    // Рефрешим подключение, чтобы сбросить текущее, если оно есть
    // Если данные пользователя есть,
    // то коннект автоматически авторизиует (authConnect)
    await api.refreshConnection();

    await _completer?.future;

    if (!isAuthorized) {
      await apiWrapStrict(
        () => api.request<UserIdResponse>(
          LoginRequest(LoginData(nickname: nickname)),
        ),
        showErrorToast: false,
        onSuccess: (res) {
          state = UserServiceState(
            nickname: nickname,
            userId: res.data,
            isBanned: false,
          );
        },
      );
    }
  }

  void logout() {
    state = null;
  }
}
