import 'package:flutter/material.dart';

import '../../core.dart';

class AppAnimatedOverlay extends HookConsumerWidget {
  const AppAnimatedOverlay({
    super.key,
    required this.animationController,
    this.animation,
    required this.child,
  });

  final AnimationController animationController;
  final Animation<double>? animation;

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animation = this.animation ??
        animationController.drive(
          CurveTween(curve: Curves.easeInOut),
        );

    final animationIsCompleted = useState(false);

    useEffect(() {
      void listener(AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          animationIsCompleted.value = true;
        } else {
          animationIsCompleted.value = false;
        }
      }

      animationController.addStatusListener(listener);
      return () => animationController.removeStatusListener(listener);
    });

    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
        boxShadow: [if (animationIsCompleted.value) shadows.dropMenu],
      ),
      child: SizeTransition(
        sizeFactor: animation,
        child: FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    );
  }
}

(OverlayPortalController, FocusNode, LayerLink) useAppAnimatedOverlay(
  AnimationController animationController,
) {
  final link = LayerLink();
  final overlayController = OverlayPortalController();
  final focusNode = useFocusNode();

  useEffect(
    () {
      Future<void> listener() async {
        if (focusNode.hasFocus) {
          if (!overlayController.isShowing) overlayController.show();
          await animationController.forward();
        } else {
          await animationController.reverse();

          if (overlayController.isShowing) overlayController.hide();
        }
      }

      focusNode.addListener(listener);
      return () => focusNode.removeListener(listener);
    },
  );

  return (overlayController, focusNode, link);
}
