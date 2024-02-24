import 'package:core/core.dart';

import 'field_pixel.dart';

part 'app_response.freezed.dart';
part 'app_response.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class AppResponse with _$AppResponse {
  const factory AppResponse.banned() = BannedResponse;

  const factory AppResponse.error(String message) = BackendErrorResponse;

  const factory AppResponse.userId(int data) = AuthResponse;

  const factory AppResponse.fieldState(List<FieldPixel> data) =
      FieldStateAppResponse;

  const factory AppResponse.onlineCount() = OnlineCountResponse;

  factory AppResponse.fromJson(Map<String, dynamic> json) =>
      _$AppResponseFromJson(json);
}
