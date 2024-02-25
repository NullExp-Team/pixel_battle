// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_colors.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.background,
    required this.backgroundMinor,
    required this.divider,
    required this.shade700,
    required this.shadow,
    required this.text,
    required this.textMinor,
  });

  final Color background;
  final Color backgroundMinor;
  final Color divider;
  final Color shade700;
  final Color shadow;
  final Color text;
  final Color textMinor;

  static final AppColors light = AppColors(
    background: _$AppColors.background[0],
    backgroundMinor: _$AppColors.backgroundMinor[0],
    divider: _$AppColors.divider[0],
    shade700: _$AppColors.shade700[0],
    shadow: _$AppColors.shadow[0],
    text: _$AppColors.text[0],
    textMinor: _$AppColors.textMinor[0],
  );

  static final themes = [
    light,
  ];

  @override
  AppColors copyWith({
    Color? background,
    Color? backgroundMinor,
    Color? divider,
    Color? shade700,
    Color? shadow,
    Color? text,
    Color? textMinor,
  }) {
    return AppColors(
      background: background ?? this.background,
      backgroundMinor: backgroundMinor ?? this.backgroundMinor,
      divider: divider ?? this.divider,
      shade700: shade700 ?? this.shade700,
      shadow: shadow ?? this.shadow,
      text: text ?? this.text,
      textMinor: textMinor ?? this.textMinor,
    );
  }

  @override
  AppColors lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this as AppColors;
    return AppColors(
      background: Color.lerp(background, other.background, t)!,
      backgroundMinor: Color.lerp(backgroundMinor, other.backgroundMinor, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      shade700: Color.lerp(shade700, other.shade700, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      text: Color.lerp(text, other.text, t)!,
      textMinor: Color.lerp(textMinor, other.textMinor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColors &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality()
                .equals(backgroundMinor, other.backgroundMinor) &&
            const DeepCollectionEquality().equals(divider, other.divider) &&
            const DeepCollectionEquality().equals(shade700, other.shade700) &&
            const DeepCollectionEquality().equals(shadow, other.shadow) &&
            const DeepCollectionEquality().equals(text, other.text) &&
            const DeepCollectionEquality().equals(textMinor, other.textMinor));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(backgroundMinor),
      const DeepCollectionEquality().hash(divider),
      const DeepCollectionEquality().hash(shade700),
      const DeepCollectionEquality().hash(shadow),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(textMinor),
    );
  }
}
