import 'package:core/core.dart';
import 'package:shared/shared.dart';

// ignore: implementation_imports, depend_on_referenced_packages
import 'package:ws/src/client/ws_client_interface.dart';

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
    required IWebSocketClient client,
  }) async {
    final adminLoginRequest = LoginAdminRequest(token);

    await api.refreshConnection();

    await apiWrapStrictSingle<void>(
      () => api.request<BackendSuccessResponse>(adminLoginRequest,
          client: client),
      showErrorToast: false,
      onSuccess: (res) {
        state = AdminServiceState(
          token: token,
          users: [],
        );
      },
    );
  }

  void logout() {
    state = null;
  }
}
