import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_shadows.tailor.dart';

@Tailor(
  themes: ['general'],
  themeGetter: ThemeGetter.none,
)
class _$AppShadows {
  static final dropMenu = [
    const BoxShadow(
      blurRadius: 22,
      spreadRadius: -10,
      offset: Offset(0, 4),
      color: Color.fromRGBO(15, 15, 15, 0.1),
    ),
  ];
}
