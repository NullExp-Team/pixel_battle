/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Add.svg
  SvgGenImage get add => const SvgGenImage('assets/icons/Add.svg');

  /// File path: assets/icons/Close.svg
  SvgGenImage get close => const SvgGenImage('assets/icons/Close.svg');

  /// File path: assets/icons/Export.svg
  SvgGenImage get export => const SvgGenImage('assets/icons/Export.svg');

  /// File path: assets/icons/User.svg
  SvgGenImage get user => const SvgGenImage('assets/icons/User.svg');

  /// File path: assets/icons/add-circle.svg
  SvgGenImage get addCircle => const SvgGenImage('assets/icons/add-circle.svg');

  /// File path: assets/icons/arrow-down.svg
  SvgGenImage get arrowDown => const SvgGenImage('assets/icons/arrow-down.svg');

  /// File path: assets/icons/arrow-left.svg
  SvgGenImage get arrowLeft => const SvgGenImage('assets/icons/arrow-left.svg');

  /// File path: assets/icons/arrow-right.svg
  SvgGenImage get arrowRight =>
      const SvgGenImage('assets/icons/arrow-right.svg');

  /// File path: assets/icons/back-button-arrow-left.svg
  SvgGenImage get backButtonArrowLeft =>
      const SvgGenImage('assets/icons/back-button-arrow-left.svg');

  /// File path: assets/icons/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icons/calendar.svg');

  /// File path: assets/icons/check.svg
  SvgGenImage get check => const SvgGenImage('assets/icons/check.svg');

  /// File path: assets/icons/close-circle.svg
  SvgGenImage get closeCircle =>
      const SvgGenImage('assets/icons/close-circle.svg');

  /// File path: assets/icons/dollar-circle.svg
  SvgGenImage get dollarCircle =>
      const SvgGenImage('assets/icons/dollar-circle.svg');

  /// File path: assets/icons/home-2.svg
  SvgGenImage get home2 => const SvgGenImage('assets/icons/home-2.svg');

  /// File path: assets/icons/image.svg
  SvgGenImage get image => const SvgGenImage('assets/icons/image.svg');

  /// File path: assets/icons/info-circle.svg
  SvgGenImage get infoCircle =>
      const SvgGenImage('assets/icons/info-circle.svg');

  /// File path: assets/icons/location.svg
  SvgGenImage get location => const SvgGenImage('assets/icons/location.svg');

  /// File path: assets/icons/long-arrow-right.svg
  SvgGenImage get longArrowRight =>
      const SvgGenImage('assets/icons/long-arrow-right.svg');

  /// File path: assets/icons/mini-arrow-right.svg
  SvgGenImage get miniArrowRight =>
      const SvgGenImage('assets/icons/mini-arrow-right.svg');

  /// File path: assets/icons/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/icons/notification.svg');

  /// File path: assets/icons/profile-circle.svg
  SvgGenImage get profileCircle =>
      const SvgGenImage('assets/icons/profile-circle.svg');

  /// File path: assets/icons/setting-2.svg
  SvgGenImage get setting2 => const SvgGenImage('assets/icons/setting-2.svg');

  /// File path: assets/icons/shopping-bag.svg
  SvgGenImage get shoppingBag =>
      const SvgGenImage('assets/icons/shopping-bag.svg');

  $AssetsIconsSocialNetworksGen get socialNetworks =>
      const $AssetsIconsSocialNetworksGen();

  /// File path: assets/icons/timer.svg
  SvgGenImage get timer => const SvgGenImage('assets/icons/timer.svg');

  /// File path: assets/icons/trash.svg
  SvgGenImage get trash => const SvgGenImage('assets/icons/trash.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        add,
        close,
        export,
        user,
        addCircle,
        arrowDown,
        arrowLeft,
        arrowRight,
        backButtonArrowLeft,
        calendar,
        check,
        closeCircle,
        dollarCircle,
        home2,
        image,
        infoCircle,
        location,
        longArrowRight,
        miniArrowRight,
        notification,
        profileCircle,
        setting2,
        shoppingBag,
        timer,
        trash
      ];
}

class $AssetsIconsSocialNetworksGen {
  const $AssetsIconsSocialNetworksGen();

  /// File path: assets/icons/social_networks/Telegram-logo.svg
  SvgGenImage get telegramLogo =>
      const SvgGenImage('assets/icons/social_networks/Telegram-logo.svg');

  /// File path: assets/icons/social_networks/basil_vk-outline.svg
  SvgGenImage get basilVkOutline =>
      const SvgGenImage('assets/icons/social_networks/basil_vk-outline.svg');

  /// File path: assets/icons/social_networks/iconoir_instagram.svg
  SvgGenImage get iconoirInstagram =>
      const SvgGenImage('assets/icons/social_networks/iconoir_instagram.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [telegramLogo, basilVkOutline, iconoirInstagram];
}

class Assets {
  Assets._();

  static const AssetGenImage appIcon = AssetGenImage('assets/app_icon.png');
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const SvgGenImage workInProgress =
      SvgGenImage('assets/work-in-progress.svg');

  /// List of all assets
  List<dynamic> get values => [appIcon, workInProgress];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package = 'core',
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package = 'core',
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/core/$_assetName';
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package = 'core',
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/core/$_assetName';
}
