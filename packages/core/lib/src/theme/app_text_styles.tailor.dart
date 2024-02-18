// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_text_styles.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.h1,
    required this.h2,
    required this.label,
    required this.text,
    required this.textAccent,
    required this.textS,
    required this.textSAccent,
  });

  final TextStyle h1;
  final TextStyle h2;
  final TextStyle label;
  final TextStyle text;
  final TextStyle textAccent;
  final TextStyle textS;
  final TextStyle textSAccent;

  static final AppTextStyles general = AppTextStyles(
    h1: _$AppTextStyles.h1[0],
    h2: _$AppTextStyles.h2[0],
    label: _$AppTextStyles.label[0],
    text: _$AppTextStyles.text[0],
    textAccent: _$AppTextStyles.textAccent[0],
    textS: _$AppTextStyles.textS[0],
    textSAccent: _$AppTextStyles.textSAccent[0],
  );

  static final themes = [
    general,
  ];

  @override
  AppTextStyles copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? label,
    TextStyle? text,
    TextStyle? textAccent,
    TextStyle? textS,
    TextStyle? textSAccent,
  }) {
    return AppTextStyles(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      label: label ?? this.label,
      text: text ?? this.text,
      textAccent: textAccent ?? this.textAccent,
      textS: textS ?? this.textS,
      textSAccent: textSAccent ?? this.textSAccent,
    );
  }

  @override
  AppTextStyles lerp(covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this as AppTextStyles;
    return AppTextStyles(
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      label: TextStyle.lerp(label, other.label, t)!,
      text: TextStyle.lerp(text, other.text, t)!,
      textAccent: TextStyle.lerp(textAccent, other.textAccent, t)!,
      textS: TextStyle.lerp(textS, other.textS, t)!,
      textSAccent: TextStyle.lerp(textSAccent, other.textSAccent, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextStyles &&
            const DeepCollectionEquality().equals(h1, other.h1) &&
            const DeepCollectionEquality().equals(h2, other.h2) &&
            const DeepCollectionEquality().equals(label, other.label) &&
            const DeepCollectionEquality().equals(text, other.text) &&
            const DeepCollectionEquality()
                .equals(textAccent, other.textAccent) &&
            const DeepCollectionEquality().equals(textS, other.textS) &&
            const DeepCollectionEquality()
                .equals(textSAccent, other.textSAccent));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(h1),
      const DeepCollectionEquality().hash(h2),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(textAccent),
      const DeepCollectionEquality().hash(textS),
      const DeepCollectionEquality().hash(textSAccent),
    );
  }
}
