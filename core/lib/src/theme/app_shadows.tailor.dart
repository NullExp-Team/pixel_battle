// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_shadows.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppShadows extends ThemeExtension<AppShadows> {
  const AppShadows({
    required this.dropMenu,
  });

  final BoxShadow dropMenu;

  static final AppShadows general = AppShadows(
    dropMenu: _$AppShadows.dropMenu[0],
  );

  static final themes = [
    general,
  ];

  @override
  AppShadows copyWith({
    BoxShadow? dropMenu,
  }) {
    return AppShadows(
      dropMenu: dropMenu ?? this.dropMenu,
    );
  }

  @override
  AppShadows lerp(covariant ThemeExtension<AppShadows>? other, double t) {
    if (other is! AppShadows) return this as AppShadows;
    return AppShadows(
      dropMenu: t < 0.5 ? dropMenu : other.dropMenu,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppShadows &&
            const DeepCollectionEquality().equals(dropMenu, other.dropMenu));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(dropMenu),
    );
  }
}
