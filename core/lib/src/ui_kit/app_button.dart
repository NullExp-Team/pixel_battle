import 'package:flutter/material.dart';

import '../../../core.dart';

enum _Style {
  fill,
  outline,
  text,
}

class _AnimationMaterialStatesController extends MaterialStatesController {
  _AnimationMaterialStatesController({
    required this.animationController,
    required this.checkMounted,
  });

  final AnimationController animationController;
  final bool Function() checkMounted;

  @override
  void update(MaterialState state, bool add) {
    if (state == MaterialState.pressed) {
      if (add) {
        animationController.reverse();
      } else {
        if (animationController.isAnimating) {
          final milliseconds = animationController.value *
              (animationController.duration?.inMilliseconds ?? 0);
          Future.delayed(
            Duration(milliseconds: milliseconds.toInt()),
            () {
              if (!checkMounted()) return;
              animationController.forward();
            },
          );
        } else {
          animationController.forward();
        }
      }
    }
    super.update(state, add);
  }
}

class AppButton extends HookWidget {
  const AppButton.fill({
    required this.text,
    this.onTap,
    this.isExtended = true,
    this.showLoading = true,
    this.allowTapDuringLoading = false,
    this.isLoading = false,
    this.isDisabled = false,
    this.padding,
    this.leftIcon,
    super.key,
  }) : _style = _Style.fill;

  const AppButton.outline({
    required this.text,
    this.onTap,
    this.isExtended = true,
    this.showLoading = true,
    this.allowTapDuringLoading = false,
    this.isLoading = false,
    this.isDisabled = false,
    this.padding,
    this.leftIcon,
    super.key,
  }) : _style = _Style.outline;

  const AppButton.text({
    required this.text,
    this.onTap,
    this.isExtended = true,
    this.showLoading = true,
    this.allowTapDuringLoading = false,
    this.isLoading = false,
    this.isDisabled = false,
    this.padding,
    this.leftIcon,
    super.key,
  }) : _style = _Style.text;

  final String text;
  final FutureOr Function()? onTap;
  final bool isExtended;
  final bool showLoading;
  final bool allowTapDuringLoading;
  final bool isLoading;
  final bool isDisabled;

  final EdgeInsetsGeometry? padding;
  final Widget? leftIcon;

  final _Style _style;

  @override
  Widget build(BuildContext context) {
    final isLoadingState = useState(false);

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 125),
      initialValue: 1,
      lowerBound: 0.8,
    );

    final fontHeight = textStyles.text.height! * textStyles.text.fontSize!;

    return ScaleTransition(
      scale: CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOutQuad,
      ),
      child: DecoratedBox(
        decoration: const BoxDecoration(),
        child: ElevatedButton(
          statesController: _AnimationMaterialStatesController(
            animationController: animationController,
            checkMounted: () => context.mounted,
          ),
          onPressed: !isDisabled &&
                  onTap != null &&
                  (!isLoadingState.value || allowTapDuringLoading) &&
                  !isLoading
              ? () async {
                  if (isLoadingState.value && !allowTapDuringLoading) return;
                  isLoadingState.value = true;
                  try {
                    await onTap!();
                  } catch (_) {
                    rethrow;
                  } finally {
                    if (context.mounted) {
                      isLoadingState.value = false;
                    }
                  }
                }
              : null,
          style: ElevatedButton.styleFrom(
            minimumSize: isExtended ? const Size.fromHeight(0) : null,
            foregroundColor: switch (_style) {
              _Style.fill => colors.background,
              _Style.outline || _Style.text => colors.text,
            },
            disabledForegroundColor: switch (_style) {
              _Style.fill => colors.background,
              _Style.outline || _Style.text => colors.textMinor,
            },
            backgroundColor: switch (_style) {
              _Style.fill => colors.text,
              _Style.outline || _Style.text => Colors.transparent,
            },
            disabledBackgroundColor: switch (_style) {
              _Style.fill => colors.textMinor,
              _Style.outline => colors.backgroundMinor,
              _Style.text => Colors.transparent,
            },
            padding: padding ??
                const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
            elevation: 0,
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: switch (_style) {
                _Style.outline => BorderSide(color: colors.divider),
                _Style.fill || _Style.text => BorderSide.none,
              },
            ),
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: (isLoadingState.value && showLoading) || isLoading
                ? SizedBox(
                    height: fontHeight,
                    width: fontHeight,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      color: switch (_style) {
                        _Style.fill => colors.background,
                        _Style.outline || _Style.text => colors.text,
                      },
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (leftIcon != null)
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: leftIcon,
                        ),
                      SText.text(
                        text,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
