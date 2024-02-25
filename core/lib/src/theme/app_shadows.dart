import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_shadows.tailor.dart';

@Tailor(
  themes: ['general'],
  themeGetter: ThemeGetter.none,
)
class _$AppShadows {
  static final shadow = [
    BoxShadow(
      blurRadius: 12,
      offset: const Offset(0, 2),
      color: const Color(0xFFBABABA).withOpacity(0.25),
    ),
  ];
}
