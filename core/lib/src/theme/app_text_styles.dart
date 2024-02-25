// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_text_styles.tailor.dart';

@Tailor(
  themes: ['general'],
  themeGetter: ThemeGetter.none,
)
class _$AppTextStyles {
  static const _inter = 'Inter';

  static final text = [
    const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: _inter,
      height: 19.36 / 16,
    ),
  ];

  static final subtitle = [
    const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: _inter,
      height: 19.36 / 16,
    ),
  ];

  static final title = [
    const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: _inter,
      height: 24.2 / 20,
    ),
  ];

  static final label = [
    const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      fontFamily: _inter,
      height: 38.73 / 32,
    ),
  ];
}
