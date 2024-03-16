import 'dart:ui';

import 'package:core/core.dart';

class ColorConverter implements JsonConverter<Color, String> {
  const ColorConverter();

  @override
  Color fromJson(String json) =>
      Color(int.parse(json.substring(1), radix: 16)).withOpacity(1);

  @override
  String toJson(Color object) =>
      '#${object.value.toRadixString(16).substring(2).toUpperCase()}';
}
