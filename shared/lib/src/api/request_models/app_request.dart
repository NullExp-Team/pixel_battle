import 'package:core/core.dart';

import 'login_data.dart';
import 'pixel_info_admin_data.dart';
import 'update_pixel_data.dart';

part 'app_request.freezed.dart';
part 'app_request.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class AppRequest with _$AppRequest {
  factory AppRequest.login(LoginData data) = LoginRequest;

  factory AppRequest.getFieldState() = GetFieldStateRequest;

  factory AppRequest.updatePixel(UpdatePixelData data) = UpdatePixelRequest;

  factory AppRequest.updatePixelAdmin(UpdatePixelData data) =
      UpdatePixelAdminRequest;

  factory AppRequest.pixelInfoAdmin(PixelInfoAdminData data) =
      PixelInfoAdminRequest;

  factory AppRequest.banUserAdmin() = BanUserAdminRequest;

  factory AppRequest.resetGameAdmin() = ResetGameAdminRequest;

  factory AppRequest.disconnect() = DisconnectRequest;

  factory AppRequest.fromJson(Map<String, dynamic> json) =>
      _$AppRequestFromJson(json);
}
