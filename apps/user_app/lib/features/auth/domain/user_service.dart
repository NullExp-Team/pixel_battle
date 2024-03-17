import 'package:core/core.dart';
import 'package:shared/shared.dart';

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
  Future<void> auth({
    required String nickname,
  }) async {
    final userId = state?.userId;

    final loginRequest = LoginRequest(
      LoginData(
        nickname: nickname,
        userId: userId,
      ),
    );

    await api.refresh();

    if (userId != null) {
      await apiWrapStrictSingle(
        () => api.request<BackendSuccessResponse>(loginRequest),
        showErrorToast: false,
        onError: (error) async {
          switch (error) {
            case InternalError(
                error: BackendErrorResponse(message: 'User not found')
              ):
              if (state != null) {
                state = null;
                return auth(nickname: nickname);
              } else {
                throw error;
              }
            default:
              throw error;
          }
        },
      );
    } else {
      await apiWrapStrict(
        () => api.request<UserIdResponse>(loginRequest),
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
