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
      body: _buildBody(context, textController),
    );
  }

  Widget _buildBody(
    BuildContext context,
    TextEditingController textController,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            _buildHeader(context),
            const SizedBox(height: 28),
            _buildTextField(textController),
            const Spacer(flex: 2),
            _buildActionButton(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Text(
      'Рисовашка',
      style: AppTextStyles.general.label,
    );
  }

  Widget _buildTextField(TextEditingController controller) {
    return AppTextField(
      placeholder: 'Введите ник',
      controller: controller,
    );
  }

  Widget _buildActionButton() {
    return AppButton(
      text: 'Начать',
      onTap: () {
        // Handle button tap
      },
    );
  }
}
