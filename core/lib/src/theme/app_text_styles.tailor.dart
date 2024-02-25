// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_text_styles.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.label,
    required this.subtitle,
    required this.text,
    required this.title,
  });

  final TextStyle label;
  final TextStyle subtitle;
  final TextStyle text;
  final TextStyle title;

  static final AppTextStyles general = AppTextStyles(
    label: _$AppTextStyles.label[0],
    subtitle: _$AppTextStyles.subtitle[0],
    text: _$AppTextStyles.text[0],
    title: _$AppTextStyles.title[0],
  );

  static final themes = [
    general,
  ];

  @override
  AppTextStyles copyWith({
    TextStyle? label,
    TextStyle? subtitle,
    TextStyle? text,
    TextStyle? title,
  }) {
    return AppTextStyles(
      label: label ?? this.label,
      subtitle: subtitle ?? this.subtitle,
      text: text ?? this.text,
      title: title ?? this.title,
    );
  }

  @override
  AppTextStyles lerp(covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this as AppTextStyles;
    return AppTextStyles(
      label: TextStyle.lerp(label, other.label, t)!,
      subtitle: TextStyle.lerp(subtitle, other.subtitle, t)!,
      text: TextStyle.lerp(text, other.text, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextStyles &&
            const DeepCollectionEquality().equals(label, other.label) &&
            const DeepCollectionEquality().equals(subtitle, other.subtitle) &&
            const DeepCollectionEquality().equals(text, other.text) &&
            const DeepCollectionEquality().equals(title, other.title));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(title),
    );
  }
}
