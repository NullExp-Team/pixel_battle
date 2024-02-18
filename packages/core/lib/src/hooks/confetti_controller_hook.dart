import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

import '../../core.dart';

class _ConfettiControllerHook extends Hook<ConfettiController> {
  const _ConfettiControllerHook({
    required this.duration,
  });

  final Duration duration;

  @override
  HookState<ConfettiController, Hook<ConfettiController>> createState() =>
      _ConfettiControllerHookState();
}

class _ConfettiControllerHookState
    extends HookState<ConfettiController, _ConfettiControllerHook> {
  late final ConfettiController _confettiController = ConfettiController(
    duration: hook.duration,
  );

  @override
  void didUpdateHook(_ConfettiControllerHook oldHook) {
    super.didUpdateHook(oldHook);

    if (hook.duration != oldHook.duration) {
      _confettiController.duration = hook.duration;
    }
  }

  @override
  ConfettiController build(BuildContext context) {
    return _confettiController;
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  String get debugLabel => 'useConfettiController';
}

ConfettiController useConfettiController({
  required Duration duration,
}) {
  return use(
    _ConfettiControllerHook(duration: duration),
  );
}
