import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AppSplash extends HookConsumerWidget {
  const AppSplash({super.key, required this.duration});

  final Duration duration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 250),
    );

    useEffect(
      () {
        animationController.forward();
        Future.delayed(
          Duration(
            milliseconds: duration.inMilliseconds -
                animationController.reverseDuration!.inMilliseconds,
          ),
          () {
            if (context.mounted) animationController.reverse();
          },
        );
      },
      [],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      locale: FlavorManager.isDev ? DevicePreview.locale(context) : null,
      builder: FlavorManager.isDev ? DevicePreview.appBuilder : null,
      home: AppWrapper(
        builder: (context) => Scaffold(
          backgroundColor: colors.background,
          body: FadeTransition(
            opacity: animationController.drive(
              CurveTween(curve: Curves.easeInExpo),
            ),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Gap(28),
                      SText.label(
                        'Рисовашка',
                        color: colors.text,
                      ),
                      const Gap(56),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
