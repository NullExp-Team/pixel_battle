import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../controller/login_contoller.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(loginContollerProvider.notifier);

    final nicknameTextController = useTextEditingController(
      text: ref.read(loginContollerProvider.select((value) => value.nickname)),
    );

    return AutoUnfocus(
      child: Scaffold(
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400, maxHeight: 1000),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HookBuilder(
                  builder: (context) {
                    final animationController = useAnimationController(
                      duration: const Duration(milliseconds: 2500),
                    )..forward();

                    return FadeTransition(
                      opacity: animationController.drive(
                        CurveTween(
                          curve:
                              const Interval(0, 0.3, curve: Curves.easeInOut),
                        ),
                      ),
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(0, -3),
                          end: Offset.zero,
                        ).animate(
                          CurvedAnimation(
                            parent: animationController,
                            curve: Curves.bounceOut,
                          ),
                        ),
                        child: Container(
                          width: 128,
                          height: 128,
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: colors.background,
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              color: colors.backgroundMinor,
                              width: 2,
                            ),
                          ),
                          child: Assets.pixelBattleLogoPng.image(),
                        ),
                      ),
                    );
                  },
                ),
                const Gap(10),
                const SText.label('Рисовашка'),
                SText.subtitle(
                  'developed by NullExp',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: colors.textMinor,
                ),
                const Gap(28),
                AppTextField(
                  hintText: 'Введите ник',
                  controller: nicknameTextController,
                  onChanged: controller.updateNickname,
                  validator: controller.nicknameValidator,
                ),
                const Gap(28),
                SizedBox(
                  height: 52,
                  child: AppButton.fill(
                    text: 'Начать',
                    onTap: controller.login,
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
