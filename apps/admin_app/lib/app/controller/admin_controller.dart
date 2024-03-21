import 'dart:ui';

import 'package:core/core.dart';
import 'package:shared/shared.dart';

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

@Riverpod()
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

  void login() {
    final dio = ref.read(dioProvider);

    final apiStream = ref.watch(webSocketApiProvider);
    final userInfoStream = apiStream.whereType<UsersOnlineResponse>();

    final listener = userInfoStream.listen(
      (event) {
        state = state.copyWith(users: event.data);
      },
    );

    ref.onDispose(listener.cancel);

    dio.post<Map<String, dynamic>>(
      'https://pixel-battle.k-lab.su/admin/login',
      data: {
        'username': 'admin',
        'password': 'password',
      },
    ).then(
      (value) {
        if (value.data != null && value.data!['access_token'] != null) {
          _adminService.auth(token: value.data!['access_token']! as String);
        }
      },
    );
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

    await apiWrap(
      () => api.request(
        AppRequest.banUserAdmin(
          BanUserAdminData(
            userId: userId.data.userId,
          ),
        ),
      ),
    );
  }

  Future<void> resetField() async {
    await apiWrap(
      () => api.request(
        AppRequest.resetGameAdmin([64, 64]),
      ),
    );
  }
}
