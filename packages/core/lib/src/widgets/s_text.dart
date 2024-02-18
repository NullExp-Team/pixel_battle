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

  const SText.h1(
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
  }) : _appTextStyle = _AppTextStyles.h1;

  const SText.h2(
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
  }) : _appTextStyle = _AppTextStyles.h2;

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

  const SText.textAccent(
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
  }) : _appTextStyle = _AppTextStyles.textAccent;

  const SText.textS(
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
  }) : _appTextStyle = _AppTextStyles.textS;

  const SText.textSAccent(
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
  }) : _appTextStyle = _AppTextStyles.textSAccent;

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

  final _AppTextStyles _appTextStyle;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? heigth;

  @override
  TextStyle get style => _getStyle();

  TextStyle _getStyle({DefaultTextStyle? defaultTextStyle}) {
    final parentStyle = defaultTextStyle?.style ?? const TextStyle();

    TextStyle mergeStyle(TextStyle? textStyle) =>
        parentStyle.merge(textStyle).merge(super.style).copyWith(
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              height: heigth,
            );

    return switch (_appTextStyle) {
      _AppTextStyles.h1 => mergeStyle(textStyles.h1),
      _AppTextStyles.h2 => mergeStyle(textStyles.h2),
      _AppTextStyles.text => mergeStyle(textStyles.text),
      _AppTextStyles.textAccent => mergeStyle(textStyles.textAccent),
      _AppTextStyles.textS => mergeStyle(textStyles.textS),
      _AppTextStyles.textSAccent => mergeStyle(textStyles.textSAccent),
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
  h1,
  h2,
  text,
  textAccent,
  textS,
  textSAccent,
  label,
  none,
}
