part of '../admin_screen.dart';

@Riverpod(dependencies: [AdminController, FieldStateService])
String? _selectedPixelUser(_SelectedPixelUserRef ref) {
  final selectedPosition = ref.watch(
    adminControllerProvider.select((value) => value.selectedPixelPosition),
  );

  if (selectedPosition == null) return null;

  final fieldState = ref.watch(
    fieldStateServiceProvider.select((value) => value.valueOrNull),
  );

  final x = selectedPosition.dx.toInt();
  final y = selectedPosition.dy.toInt();

  final nickname = fieldState?.pixels[x]?[y]?.nickname;

  return nickname;
}

@Riverpod(dependencies: [FieldStateService])
Size? _currentFieldSize(_CurrentFieldSizeRef ref) {
  final fieldState = ref.watch(
    fieldStateServiceProvider.select((value) => value.valueOrNull),
  );

  if (fieldState == null) {
    return null;
  }

  return Size(fieldState.width.toDouble(), fieldState.height.toDouble());
}

class ActionPanel extends HookConsumerWidget {
  const ActionPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(adminControllerProvider.notifier);
    final state = ref.watch(adminControllerProvider);
    final fieldSize = ref.watch(_currentFieldSizeProvider);

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
            const Gap(12),
            Text(
              'Параметры:',
              style: AppTextStyles.general.subtitle,
            ),
            const Gap(12),
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
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: AppColors.light.background,
                        contentPadding: const EdgeInsets.all(24),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: AppColors.light.divider,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        content: ResetFieldModal(
                          currentFieldSize: fieldSize,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            const Gap(12),
            SizedBox(
              height: 40,
              child: Text(
                'Модерация',
                style: AppTextStyles.general.title,
              ),
            ),
            const Gap(12),
            Text(
              'Текущий пиксель:',
              style: AppTextStyles.general.subtitle,
            ),
            const Gap(12),
            SizedBox(
              height: 40,
              child: AppButton.outline(
                text: 'Очистить пиксель',
                isDisabled: state.selectedPixelPosition == null,
                onTap: controller.clearPixel,
              ),
            ),
            const Gap(12),
            Consumer(
              builder: (context, ref, _) {
                final nickname = ref.watch(_selectedPixelUserProvider);

                if (nickname == null) return const SizedBox();

                return SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SText.text('Закрасил:'),
                          SText.text(nickname),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: AppButton.outline(
                          text: 'Забанить',
                          onTap: controller.banUser,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
