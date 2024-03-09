import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_colors.tailor.dart';

@Tailor(themes: ['light'], themeGetter: ThemeGetter.none)
class _$AppColors {
  static final background = [const Color(0xFFFFFFFF)];
  static final backgroundMinor = [const Color(0xFFF3F3F3)];
  static final text = [const Color(0xFF000000)];
  static final textMinor = [const Color(0xFF727272)];
  static final divider = [const Color(0xFF000000).withOpacity(0.1)];
  static final dividerFocus = [const Color(0xFF000000).withOpacity(0.5)];
  static final alert = [const Color(0xFFFF066F)];
  static final shade700 = [const Color(0xFF2E3A59)];
  static final shadow = [const Color(0xFFBABABA).withOpacity(0.25)];
}
