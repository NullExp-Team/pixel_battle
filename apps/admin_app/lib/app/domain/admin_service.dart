import 'package:core/core.dart';
import 'package:shared/shared.dart';

part 'admin_service.freezed.dart';
part 'admin_service.g.dart';

@freezed
class AdminServiceState with _$AdminServiceState {
  factory AdminServiceState({
    required String token,
    required List<UserInfo> users,
  }) = _AdminServiceState;

  factory AdminServiceState.fromJson(Map<String, dynamic> json) =>
      _$AdminServiceStateFromJson(json);
}

@Riverpod(keepAlive: true)
class AdminService extends _$AdminService
    with ControllerMixin, PersistenceMixin<AdminServiceState?> {
  @override
  AdminServiceState? build() => persistentBuild(
        () => null,
        fromJson: AdminServiceState.fromJson,
      );

  @useInApiWrap
  Future<void> auth({
    required String token,
  }) async {
    final adminLoginRequest = LoginAdminRequest(token);

    await api.refreshConnection();

    await apiWrapStrictSingle(
      () => api.request<BackendSuccessResponse>(adminLoginRequest),
      showErrorToast: false,
      onSuccess: (res) {
        state = AdminServiceState(token: token, users: []);
      },
      onError: (error) async {
        switch (error) {
          case InternalError(
              error: BackendErrorResponse(message: 'User not found')
            ):
            if (state != null) {
              state = null;
              return auth(token: token);
            } else {
              throw error;
            }
          default:
            throw error;
        }
      },
    );
  }

  void logout() {
    state = null;
  }
}
