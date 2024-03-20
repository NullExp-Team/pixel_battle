part of '../home_screen.dart';

class _ConnectionStatus extends HookConsumerWidget {
  const _ConnectionStatus();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HookBuilder(
      builder: (context) {
        final animationController = useAnimationController(
          duration: const Duration(milliseconds: 2000),
        )..repeat(reverse: true);

        return FadeTransition(
          opacity: animationController.drive(
            CurveTween(
              curve: const Interval(0, 0.1, curve: Curves.easeInOut),
            ),
          ),
          child: Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
          ),
        );
      },
    );
  }
}
