import 'package:flutter/material.dart';

import '../extensions/config_extension.dart';

/// Нужен для удобной работы со стилями текста в приложении
class SText extends Text {
  const SText(
    super.data, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.heigth,
  }) : _appTextStyle = _AppTextStyles.none;

  const SText.text(
    super.data, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.heigth,
  }) : _appTextStyle = _AppTextStyles.text;

  const SText.title(
    super.data, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.heigth,
  }) : _appTextStyle = _AppTextStyles.title;

  const SText.subtitle(
    super.data, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.heigth,
  }) : _appTextStyle = _AppTextStyles.subtitle;

  const SText.label(
    super.data, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.heigth,
  }) : _appTextStyle = _AppTextStyles.label;

  const SText.none(
    super.data, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.heigth,
  }) : _appTextStyle = _AppTextStyles.none;

  final _AppTextStyles _appTextStyle;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? heigth;

  @override
  TextStyle get style => _getStyle();

  TextStyle _getStyle({DefaultTextStyle? defaultTextStyle}) {
    final parentStyle = defaultTextStyle?.style ?? const TextStyle();

    TextStyle mergeStyle(TextStyle? textStyle) => parentStyle.merge(textStyle).merge(super.style).copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: heigth,
        );

    return switch (_appTextStyle) {
      _AppTextStyles.text => mergeStyle(textStyles.text),
      _AppTextStyles.subtitle => mergeStyle(textStyles.subtitle),
      _AppTextStyles.title => mergeStyle(textStyles.title),
      _AppTextStyles.label => mergeStyle(textStyles.label),
      _AppTextStyles.none => mergeStyle(parentStyle),
    };
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = DefaultTextStyle.of(context);

    return DefaultTextStyle(
      style: _getStyle(defaultTextStyle: defaultTextStyle),
      textAlign: textAlign ?? defaultTextStyle.textAlign,
      softWrap: softWrap ?? defaultTextStyle.softWrap,
      overflow: overflow ?? defaultTextStyle.overflow,
      maxLines: maxLines ?? defaultTextStyle.maxLines,
      textWidthBasis: textWidthBasis ?? defaultTextStyle.textWidthBasis,
      textHeightBehavior: const TextHeightBehavior(
        leadingDistribution: TextLeadingDistribution.even,
      ),
      child: Builder(builder: super.build),
    );
  }
}

enum _AppTextStyles {
  text,
  subtitle,
  title,
  label,
  none,
}
