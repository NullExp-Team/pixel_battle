import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared/shared.dart';

import '../../controller/admin_controller.dart';

class ActionPanel extends HookConsumerWidget {
  const ActionPanel({super.key});

  String? selectedPixelUser(
    AsyncValue<FieldStateMap> fieldState,
    Offset? selectedPixel,
  ) {
    if (selectedPixel != null) {
      return fieldState
          .value
          ?.pixels[selectedPixel.dx.toInt()]?[selectedPixel.dy.toInt()]
          ?.nickname;
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(adminControllerProvider.notifier);
    final state = ref.watch(adminControllerProvider);
    final fieldState = ref.watch(fieldStateServiceProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              child: Text(
                'Настройки',
                style: AppTextStyles.general.title,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Параметры:',
              style: AppTextStyles.general.subtitle,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  'Время закраски (сек):',
                  style: AppTextStyles.general.text
                      .copyWith(color: AppColors.light.textMinor),
                ),
                const Spacer(),
                const SizedBox(
                  width: 80,
                  child: AppTextField(
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 40,
              child: AppButton.outline(
                text: 'Пересоздать холст',
                onTap: () {
                  controller.resetField();
                },
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 40,
              child: Text(
                'Модерация',
                style: AppTextStyles.general.title,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Текущий пиксель:',
              style: AppTextStyles.general.subtitle,
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 40,
              child: AppButton.outline(
                text: 'Очистить пиксель',
                isDisabled: state.selectedPixelPosition == null,
                onTap: () {
                  controller.clearPixel();
                },
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 40,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Закрасил:'),
                      Text(
                        selectedPixelUser(
                              fieldState,
                              state.selectedPixelPosition,
                            ) ??
                            'Никто',
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 40,
                    width: 120,
                    child: AppButton.outline(
                      text: 'Забанить',
                      isDisabled: selectedPixelUser(
                            fieldState,
                            state.selectedPixelPosition,
                          ) ==
                          null,
                      onTap: () {
                        controller.banUser();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
