import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../../core.dart';

final _workInProgressTextControllerProvider = NotifierProvider.autoDispose
    .family<_WorkInProgressTextController, String, String>(
  _WorkInProgressTextController.new,
);

class _WorkInProgressTextController
    extends AutoDisposeFamilyNotifier<String, String> with ControllerMixin {
  @override
  String build(_) => '';

  final _rand = Random();

  Future<void> animate() async {
    await apiWrap(
      rateLimiter: Throttle(tag: arg),
      () async {
        var active = true;
        ref.onDispose(() => active = false);

        const text = 'Work in progress';
        for (var i = 0; i < text.length; i++) {
          if (!active) return;
          await Future.delayed(Duration(milliseconds: 30 + _rand.nextInt(50)));
          state =
              '${text.substring(0, i + 1)}${i != text.length - 1 ? '|' : ' '}';

          if (i == text.length - 1) {
            for (var j = 0; j < 7; j++) {
              if (!active) return;
              await Future.delayed(const Duration(milliseconds: 400));
              state = '$text${j.isEven ? '|' : ' '}';
            }
            i = 0;
          }
        }
      },
    );
  }
}

class WorkInProgressScreen extends HookConsumerWidget {
  const WorkInProgressScreen({super.key, required this.screenName});

  final String screenName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        ref.read(_workInProgressTextControllerProvider(screenName).notifier);

    useEffect(() {
      Future.delayed(const Duration(milliseconds: 200), controller.animate);
    });

    return Scaffold(
      body: Center(
        heightFactor: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SvgIcon(
              Assets.workInProgress,
              height: 200,
              animationDelay: Duration(milliseconds: 200),
            ),
            const Gap(16),
            SText.title(screenName),
            const Gap(4),
            Consumer(
              builder: (context, ref, child) {
                final text = ref
                    .watch(_workInProgressTextControllerProvider(screenName));
                return SText.text(text);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class WorkInProgressWrap extends StatelessWidget {
  const WorkInProgressWrap({
    super.key,
    required this.enabled,
    required this.screenName,
    required this.child,
  });

  final bool enabled;
  final String screenName;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return enabled ? WorkInProgressScreen(screenName: screenName) : child;
  }
}
