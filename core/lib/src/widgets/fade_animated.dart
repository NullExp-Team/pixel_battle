import 'package:flutter/material.dart';

import '../../core.dart';

class FadeAnimated extends HookWidget {
  const FadeAnimated({
    super.key,
    this.delay = const Duration(milliseconds: 250),
    this.duration = const Duration(milliseconds: 200),
    this.curve = Curves.easeInOut,
    this.child,
  });

  final Duration? delay;
  final Duration duration;
  final Curve curve;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: duration,
      keys: [duration],
    );

    useEffect(() {
      if (delay != null) {
        Future.delayed(delay!, () {
          if (context.mounted) animationController.forward();
        });
      } else {
        animationController.forward();
      }

      return null;
    });

    return FadeTransition(
      opacity: CurvedAnimation(
        parent: animationController,
        curve: curve,
      ),
      child: child,
    );
  }
}

// TEST
// ignore: unused_element
class Animated extends HookWidget {
  const Animated({
    // ignore: unused_element
    super.key,
    required this.index,
    // ignore: unused_element
    this.child,
  });

  final int index;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 400),
    );

    useEffect(() {
      Future.delayed(Duration(milliseconds: 100 * index), () {
        if (context.mounted) animationController.forward();
      });

      return null;
    });

    final animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );

    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }
}
