import 'package:core/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
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
                placeholder: 'Введите ник',
                controller: textController,
              ),
              const Spacer(flex: 2),
              AppButton(
                text: 'Начать',
                onTap: () {
                  // Handle button tap
                },
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
