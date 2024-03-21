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
  @override
  UserServiceState? build() => persistentBuild(
        () => null,
        fromJson: UserServiceState.fromJson,
      );

  @useInApiWrap
  Future<void> authConnect({
    required IWebSocketClient client,
  }) async {
    final curState = state;

    if (curState == null) throw Exception('User not authorized');

    if (curState.isBanned) await Future.delayed(const Duration(seconds: 30));

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
        state = state?.copyWith(isBanned: false);
      },
      showErrorToast: false,
      onError: (error) {
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
      return;
    }

    state = state?.copyWith(nickname: nickname);

    // Рефрешим подключение, чтобы сбросить текущее, если оно есть
    // Если данные пользователя есть,
    // то коннект автоматически авторизиует (authConnect)
    await api.refreshConnection();

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
