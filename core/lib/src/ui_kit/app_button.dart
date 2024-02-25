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
    if (buttonType == AppButtonType.filled) {
      return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.light.text,
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: SText.text(
          text,
          color: colors.background,
        ),
      );
    } else {
      return OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: const BorderSide(color: Colors.grey),
        ),
        child: SText.text(
          text,
          color: colors.text,
        ),
      );
    }
  }
}
