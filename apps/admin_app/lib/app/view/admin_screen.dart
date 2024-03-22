import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:shared/shared.dart';

import '../controller/admin_controller.dart';
import 'widgets/reset_field_modal.dart';
import 'widgets/users_panel.dart';

part 'widgets/action_panel.dart';

part 'admin_screen.g.dart';

class AdminScreen extends HookConsumerWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adminControllerProvider);
    final controller = ref.watch(adminControllerProvider.notifier);

    return Scaffold(
      backgroundColor: AppColors.light.backgroundMinor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.light.background,
              border: Border(
                bottom: BorderSide(color: AppColors.light.divider),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    'Рисовашка Админка',
                    style: AppTextStyles.general.title,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 320,
                  decoration: BoxDecoration(
                    color: AppColors.light.background,
                    border: Border(
                      right: BorderSide(color: AppColors.light.divider),
                    ),
                  ),
                  child: const ActionPanel(),
                ),
                Expanded(
                  child: PixelField(
                    maxScale: 100,
                    minScale: 0.1,
                    selectedPixel: state.selectedPixelPosition,
                    onPixelSelectionChanged: controller.updateSelectedPosition,
                  ),
                ),
                Container(
                  width: 320,
                  decoration: BoxDecoration(
                    color: AppColors.light.background,
                    border: Border(
                      left: BorderSide(color: AppColors.light.divider),
                    ),
                  ),
                  child: const UsersPanel(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
