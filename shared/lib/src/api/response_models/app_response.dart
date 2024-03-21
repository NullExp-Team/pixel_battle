import 'package:core/core.dart';

import 'field_state_data.dart';
import 'online_count_data.dart';
import 'pixel_info_admin.dart';
import 'pixel_update_data.dart';
import 'selection_update_data.dart';
import 'user_info.dart';

part 'app_response.freezed.dart';
part 'app_response.g.dart';

@Freezed(
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.snake,
  fallbackUnion: 'unknown',
)
sealed class AppResponse with _$AppResponse {
  const factory AppResponse.banned() = BannedResponse;

  const factory AppResponse.success(String data) = BackendSuccessResponse;

  @Implements<Exception>()
  const factory AppResponse.error(String message) = BackendErrorResponse;

  const factory AppResponse.userId(String data) = UserIdResponse;

  const factory AppResponse.fieldState({
    // In seconds
    required int cooldown,
    required List<int> size,
    required FieldStateData data,
  }) = FieldStateResponse;

  const factory AppResponse.pixelUpdate(PixelUpdateData data) =
      PixelUpdateResponse;

  const factory AppResponse.pixelInfo(PixelInfoAdmin data) =
      PixelInfoAdminResponse;

  const factory AppResponse.selectionUpdate(SelectionUpdateData data) =
      SelectionUpdateResponse;

  const factory AppResponse.onlineCountUpdate(OnlineCountData data) =
      OnlineCountUpdateResponse;

  const factory AppResponse.cooldownUpdate(int data) = CooldownUpdateResponse;

  const factory AppResponse.usersOnline(List<UserInfo> data) =
      UsersOnlineResponse;

  const factory AppResponse.no() = NoResponse;

  const factory AppResponse.unknown() = UnknownResponse;

  factory AppResponse.fromJson(Map<String, dynamic> json) =>
      _$AppResponseFromJson(json);
}
