import 'package:flutter/widgets.dart';

import '../../core.dart';

class SvgIcon extends HookWidget {
  const SvgIcon(
    this.image, {
    super.key,
    this.padding,
    this.width,
    this.height,
    this.color,
    this.fit = BoxFit.contain,
    this.animationDelay,
  });

  final SvgGenImage image;
  final EdgeInsets? padding;

  final double? width;
  final double? height;
  final Color? color;
  final BoxFit fit;

  final Duration? animationDelay;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: AnimatedSize(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        child: image.svg(
          width: width,
          height: height,
          fit: fit,
          colorFilter: color != null
              ? ColorFilter.mode(
                  color!,
                  BlendMode.srcIn,
                )
              : null,
        ),
      ),
    );
  }
}
