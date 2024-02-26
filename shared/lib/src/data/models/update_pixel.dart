import 'package:core/core.dart';

part 'update_pixel.freezed.dart';
part 'update_pixel.g.dart';

@freezed
class UpdatePixel with _$UpdatePixel {
  factory UpdatePixel({
    required int x,
    required int y,
    required String color,
    @JsonKey(name: 'action_time') required DateTime actionTime,
  }) = _UpdatePixel;

  factory UpdatePixel.fromJson(Map<String, dynamic> json) => _$UpdatePixelFromJson(json);
}
