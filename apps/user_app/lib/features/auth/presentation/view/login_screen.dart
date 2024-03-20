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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Text(
                  'Рисовашка',
                  style: textStyles.label,
                ),
                const SizedBox(height: 28),
                AppTextField(
                  hintText: 'Введите ник',
                  controller: nicknameTextController,
                  onChanged: controller.updateNickname,
                  validator: controller.nicknameValidator,
                ),
                const Spacer(flex: 2),
                AppButton.fill(
                  text: 'Начать',
                  onTap: controller.login,
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
