import 'package:flutter/material.dart';
import '../../core.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.placeholder,
    required this.controller,
  });
  final String placeholder;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: placeholder,
        filled: true,
        fillColor: Colors.grey.withOpacity(0.15),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.textMinor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.textMinor),
        ),
      ),
      style: textStyles.text,
    );
  }
}
