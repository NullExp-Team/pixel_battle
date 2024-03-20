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
      showErrorToast: false,
      onError: (error) async {
        switch (error) {
          case InternalError(
              error: BackendErrorResponse(message: 'User not found')
            ):
            if (state != null) {
              state = null;
              toast.error(
                title: 'Пользователь не найден',
                text: 'Попробуйте ещё раз',
              );
            } else {
              throw error;
            }
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
          );
        },
      );
    }
  }

  void logout() {
    state = null;
  }
}
