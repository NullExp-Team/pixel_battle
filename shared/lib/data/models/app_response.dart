import 'package:core/core.dart';

import 'field_pixel.dart';

part 'app_response.freezed.dart';
part 'app_response.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class AppResponse with _$AppResponse {
  const factory AppResponse.banned() = BannedAppResponse;

  const factory AppResponse.error(String message) = ErrorAppResponse;

  const factory AppResponse.userId(int data) = UserIdAppResponse;

  const factory AppResponse.fieldState(List<FieldPixel> data) =
      FieldStateAppResponse;

  const factory AppResponse.onlineCount() = OnlineCountAppResponse;

  factory AppResponse.fromJson(Map<String, dynamic> json) =>
      _$AppResponseFromJson(json);
}
