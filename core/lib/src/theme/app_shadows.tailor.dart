// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_shadows.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppShadows extends ThemeExtension<AppShadows> {
  const AppShadows({
    required this.shadow,
  });

  final BoxShadow shadow;

  static final AppShadows general = AppShadows(
    shadow: _$AppShadows.shadow[0],
  );

  static final themes = [
    general,
  ];

  @override
  AppShadows copyWith({
    BoxShadow? shadow,
  }) {
    return AppShadows(
      shadow: shadow ?? this.shadow,
    );
  }

  @override
  AppShadows lerp(covariant ThemeExtension<AppShadows>? other, double t) {
    if (other is! AppShadows) return this as AppShadows;
    return AppShadows(
      shadow: t < 0.5 ? shadow : other.shadow,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppShadows &&
            const DeepCollectionEquality().equals(shadow, other.shadow));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(shadow),
    );
  }
}
