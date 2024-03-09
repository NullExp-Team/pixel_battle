import 'package:core/core.dart';

part 'field_pixel.freezed.dart';
part 'field_pixel.g.dart';

@freezed
class FieldPixel with _$FieldPixel {
  factory FieldPixel({
    required int x,
    required int y,
    required String color,
    required String username,
  }) = _FieldPixel;

  factory FieldPixel.fromJson(Map<String, dynamic> json) =>
      _$FieldPixelFromJson(json);
}
