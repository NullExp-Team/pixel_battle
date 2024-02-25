import 'package:flutter/material.dart';
import '../../core.dart';

enum AppButtonType { filled, bordered }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
    this.buttonType = AppButtonType.filled,
  });

  final String text;
  final VoidCallback onTap;
  final AppButtonType buttonType;

  @override
  Widget build(BuildContext context) {
    return buttonType == AppButtonType.filled
        ? _buildFilledButton()
        : _buildBorderedButton();
  }

  Widget _buildFilledButton() {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.light.text,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: _buildButtonText(AppColors.light.background),
    );
  }

  Widget _buildBorderedButton() {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        side: const BorderSide(color: Colors.grey),
      ),
      child: _buildButtonText(Colors.black),
    );
  }

  Widget _buildButtonText(Color textColor) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: textColor,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
