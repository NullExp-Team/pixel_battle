import 'dart:ui';

import 'package:core/core.dart';

import '../convertors/color_convertor.dart';
import '../response_models/position.dart';

part 'update_pixel_data.freezed.dart';
part 'update_pixel_data.g.dart';

@freezed
class UpdatePixelData with _$UpdatePixelData {
  factory UpdatePixelData({
    required Position position,
    @ColorConverter() required Color color,
  }) = _UpdatePixelData;

  factory UpdatePixelData.fromJson(Map<String, dynamic> json) =>
      _$UpdatePixelDataFromJson(json);
}
