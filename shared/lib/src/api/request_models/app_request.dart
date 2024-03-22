import 'package:core/core.dart';

import 'ban_user_admin_data.dart';
import 'login_data.dart';
import 'pixel_info_admin_data.dart';
import 'update_pixel_data.dart';
import 'update_selection_data.dart';

part 'app_request.freezed.dart';
part 'app_request.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class AppRequest with _$AppRequest {
  factory AppRequest.login(LoginData data) = LoginRequest;

  factory AppRequest.loginAdmin(String data) = LoginAdminRequest;

  factory AppRequest.getFieldState() = GetFieldStateRequest;

  factory AppRequest.getOnlineCount() = GetOnlineCountRequest;

  factory AppRequest.getCooldown() = GetCooldownRequest;

  factory AppRequest.updatePixel(UpdatePixelData data) = UpdatePixelRequest;

  factory AppRequest.updatePixelAdmin(UpdatePixelData data) =
      UpdatePixelAdminRequest;

  factory AppRequest.updateSelection(UpdateSelectionData data) =
      UpdateSelectionRequest;

  factory AppRequest.updateCooldownAdmin(int data) = UpdateCooldownRequest;

  factory AppRequest.pixelInfoAdmin(PixelInfoAdminData data) =
      PixelInfoAdminRequest;

  factory AppRequest.toggleBanUserAdmin(BanUserAdminData data) =
      ToggleBanUserAdminRequest;

  factory AppRequest.resetGameAdmin(List<int> data) = ResetGameAdminRequest;

  factory AppRequest.disconnect() = DisconnectRequest;

  factory AppRequest.fromJson(Map<String, dynamic> json) =>
      _$AppRequestFromJson(json);
}
