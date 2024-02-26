import 'package:core/core.dart';

import 'field_pixel.dart';

part 'app_response.freezed.dart';
part 'app_response.g.dart';

@Freezed(
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.snake,
  fallbackUnion: 'unknown',
)
sealed class AppResponse with _$AppResponse {
  const factory AppResponse.banned() = BannedResponse;

  @Implements<Exception>()
  const factory AppResponse.error(String message) = BackendErrorResponse;

  const factory AppResponse.userId(int data) = AuthResponse;

  const factory AppResponse.fieldState({
    required int width,
    required int height,
    required List<FieldPixel> data,
  }) = FieldStateResponse;

  const factory AppResponse.onlineCount() = OnlineCountResponse;

  const factory AppResponse.unknown() = UnknownResponse;

  const factory AppResponse.noResponse() = NoResponse;

  factory AppResponse.fromJson(Map<String, dynamic> json) => _$AppResponseFromJson(json);
}
