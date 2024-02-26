import 'package:core/core.dart';

import 'update_pixel.dart';

part 'app_request.freezed.dart';
part 'app_request.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class AppRequest with _$AppRequest {
  factory AppRequest.auth({
    required String nickname,
    @JsonKey(name: 'user_id') int? userId,
  }) = AuthRequest;

  factory AppRequest.updatePixel(UpdatePixel data) = UpdatePixelRequest;

  factory AppRequest.getFieldState() = GetFieldStateRequest;

  factory AppRequest.disconnect() = DisconnectRequest;

  factory AppRequest.fromJson(Map<String, dynamic> json) => _$AppRequestFromJson(json);
}
