import 'package:core/core.dart';

part 'update_pixel_data.freezed.dart';
part 'update_pixel_data.g.dart';

@freezed
class UpdatePixelData with _$UpdatePixelData {
  factory UpdatePixelData({
    required int x,
    required int y,
    required int color,
  }) = _UpdatePixelData;

  factory UpdatePixelData.fromJson(Map<String, dynamic> json) =>
      _$UpdatePixelDataFromJson(json);
}
