import 'dart:ui';

import 'package:core/core.dart';
import 'package:shared/shared.dart';
// ignore: implementation_imports, depend_on_referenced_packages
import 'package:ws/src/client/ws_client_interface.dart';

import '../domain/admin_service.dart';

part 'admin_controller.freezed.dart';
part 'admin_controller.g.dart';

@freezed
class AdminControllerState with _$AdminControllerState {
  factory AdminControllerState({
    required Offset? selectedPixelPosition,
    required List<UserInfo> users,
  }) = _AdminControllerState;
}

@Riverpod(dependencies: [WebSocketApi])
class AdminController extends _$AdminController with ControllerMixin {
  AdminService get _adminService => ref.read(adminServiceProvider.notifier);

  @override
  AdminControllerState build() {
    return AdminControllerState(
      selectedPixelPosition: null,
      users: [],
    );
  }

  void updateSelectedPosition(Offset? position) {
    state = state.copyWith(selectedPixelPosition: position);
  }

  Future<void> login({
    required IWebSocketClient client,
  }) async {
    final dio = ref.read(dioProvider);

    final apiStream = ref.watch(webSocketApiProvider);
    final userInfoStream = apiStream.whereType<UsersInfoUpdateResponse>();

    final listener = userInfoStream.listen(
      (event) {
        state = state.copyWith(users: event.data);
      },
    );

    ref.onDispose(listener.cancel);

    final token = await dio.post<Map<String, dynamic>>(
      'https://pixel-battle.k-lab.su/admin/login',
      data: {
        'username': 'admin',
        'password': 'password',
      },
    );

    if (token.data != null && token.data!['access_token'] != null) {
      await _adminService.auth(
        token: token.data!['access_token']! as String,
        client: client,
      );
    }
  }

  Future<void> clearPixel() async {
    if (state.selectedPixelPosition == null) return;

    await apiWrap(
      () => api.request(
        AppRequest.updatePixelAdmin(
          UpdatePixelData(
            x: state.selectedPixelPosition!.dx.toInt(),
            y: state.selectedPixelPosition!.dy.toInt(),
            color: const Color(0xffffffff),
          ),
        ),
      ),
    );
  }

  Future<void> banUser() async {
    if (state.selectedPixelPosition == null) return;

    final userId = await api.request<PixelInfoAdminResponse>(
      AppRequest.pixelInfoAdmin(
        PixelInfoAdminData(
          x: state.selectedPixelPosition!.dx.toInt(),
          y: state.selectedPixelPosition!.dy.toInt(),
        ),
      ),
    );

    final id = userId.data.userId;

    if (id == null) return;

    await apiWrap(
      () => api.request(
        AppRequest.toggleBanUserAdmin(
          BanUserAdminData(
            userId: id,
          ),
        ),
      ),
    );
  }

  Future<void> resetField(int width, int height) async {
    await apiWrap(
      () => api.request(
        AppRequest.resetGameAdmin([width, height]),
      ),
    );
  }

  Future<void> updateCooldown(int cooldown) async {
    await apiWrap(
      () => api.request(
        AppRequest.updateCooldownAdmin(cooldown),
      ),
    );
  }
}
