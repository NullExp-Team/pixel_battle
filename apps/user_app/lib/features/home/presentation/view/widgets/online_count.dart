part of '../home_screen.dart';

@Riverpod(dependencies: [WebSocketApi])
Stream<int> _onlineCount(_OnlineCountRef ref) async* {
  final apiStream = ref.watch(webSocketApiProvider);

  final onlineCountStream = apiStream
      .whereType<OnlineCountResponse>()
      .map((event) => event.data.online);

  final mockStream = Stream<int>.fromFuture(
    Future.delayed(const Duration(seconds: 3), () => 1),
  );

  final stream = onlineCountStream.mergeWith([mockStream]);

  yield* stream;
}

class _OnlineCount extends HookConsumerWidget {
  const _OnlineCount();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncOnlineCount = ref.watch(_onlineCountProvider);

    return asyncOnlineCount.maybeWhen(
      orElse: () => const SizedBox(),
      data: (count) => HookBuilder(
        builder: (context) {
          final animationController = useAnimationController(
            duration: const Duration(milliseconds: 400),
          )..forward();

          return FadeTransition(
            opacity: animationController.drive(
              CurveTween(curve: Curves.easeInOut),
            ),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: colors.background,
                borderRadius: BorderRadius.circular(99),
                border: Border.all(color: colors.divider),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  const _ConnectionStatus(),
                  const Gap(8),
                  const Icon(Icons.account_circle_outlined),
                  const Gap(8),
                  asyncOnlineCount.when(
                    loading: () => SizedBox.square(
                      dimension: 18,
                      child: CircularProgressIndicator(
                        color: colors.text,
                        strokeWidth: 2,
                      ),
                    ),
                    error: (error, stackTrace) => const SizedBox(),
                    data: (count) => SText.text('$count'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
