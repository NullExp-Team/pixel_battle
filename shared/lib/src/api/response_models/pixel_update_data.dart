import 'dart:ui';

import 'package:core/core.dart';

import '../convertors/color_convertor.dart';

part 'pixel_update_data.freezed.dart';
part 'pixel_update_data.g.dart';

@freezed
class PixelUpdateData with _$PixelUpdateData {
  factory PixelUpdateData({
    required int x,
    required int y,
    @ColorConverter() required Color color,
    required String nickname,
  }) = _PixelUpdateData;

  factory PixelUpdateData.fromJson(Map<String, dynamic> json) =>
      _$PixelUpdateDataFromJson(json);
}
