import 'dart:ui';

import 'package:core/core.dart';

import '../convertors/color_convertor.dart';
import 'position.dart';

part 'field_pixel.freezed.dart';
part 'field_pixel.g.dart';

@freezed
class FieldPixel with _$FieldPixel {
  factory FieldPixel({
    required Position position,
    @ColorConverter() required Color color,
    required String nickname,
  }) = _FieldPixel;

  factory FieldPixel.fromJson(Map<String, dynamic> json) =>
      _$FieldPixelFromJson(json);
}
