// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_text_styles.tailor.dart';

@Tailor(
  themes: ['general'],
  themeGetter: ThemeGetter.none,
)
class _$AppTextStyles {
  static const _roboto = 'Roboto';

  static final h1 = [
    const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: _roboto,
      height: 33.6 / 24,
    ),
  ];

  static final h2 = [
    const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: _roboto,
      height: 28 / 20,
    ),
  ];

  static final text = [
    const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: _roboto,
      height: 20 / 16,
    ),
  ];

  static final textAccent = [
    const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: _roboto,
      height: 24 / 16,
    ),
  ];

  static final textS = [
    const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      fontFamily: _roboto,
      height: 15.6 / 13,
    ),
  ];

  static final textSAccent = [
    const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      fontFamily: _roboto,
      height: 15.6 / 13,
    ),
  ];

  static final label = [
    const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      fontFamily: _roboto,
      height: 12 / 10,
    ),
  ];
}
