import 'package:core/core.dart';

import 'field_pixel.dart';
import 'online_count_data.dart';
import 'pixel_info_admin.dart';

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
    required List<int> size,
    required List<FieldPixel> data,
  }) = FieldStateResponse;

  const factory AppResponse.pixelUpdate(FieldPixel data) = PixelUpdateResponse;
  const factory AppResponse.pixelInfo(PixelInfoAdmin data) =
      PixelInfoAdminResponse;

  const factory AppResponse.onlineCount(OnlineCountData data) =
      OnlineCountResponse;

  const factory AppResponse.no() = NoResponse;

  const factory AppResponse.unknown() = UnknownResponse;

  factory AppResponse.fromJson(Map<String, dynamic> json) =>
      _$AppResponseFromJson(json);
}
