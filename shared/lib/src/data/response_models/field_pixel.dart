import 'package:core/core.dart';

part 'field_pixel.freezed.dart';
part 'field_pixel.g.dart';

@freezed
class FieldPixel with _$FieldPixel {
  factory FieldPixel({
    required int x,
    required int y,
    required int color,
    @JsonKey(name: 'user_id') required String userId,
  }) = _FieldPixel;

  factory FieldPixel.fromJson(Map<String, dynamic> json) =>
      _$FieldPixelFromJson(json);
}
