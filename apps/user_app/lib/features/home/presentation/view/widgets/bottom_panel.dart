part of '../home_screen.dart';

class _BottomPanel extends HookConsumerWidget {
  const _BottomPanel({
    required this.transformationController,
  });

  final TransformationController transformationController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(homeControllerProvider.notifier);

    return Container(
      decoration: BoxDecoration(
        color: colors.background,
        border: Border.all(color: colors.divider, strokeAlign: 1),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        boxShadow: [
          shadows.shadow,
        ],
      ),
      padding: pagePadding.copyWith(top: 12, bottom: 12),
      child: SafeArea(
        top: false,
        minimum: const EdgeInsets.only(bottom: 36),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ZoomButtons(
              transformationController: transformationController,
            ),
            const Spacer(),
            Consumer(
              builder: (_, ref, __) {
                final selectedColor = ref.watch(
                  homeControllerProvider.select((value) => value.selectedColor),
                );

                return SizedBox(
                  height: 40,
                  width: 40,
                  child: _ColorCard(
                    color: selectedColor,
                    onTap: () => _showColorPickerBottomSheet(context: context),
                  ),
                );
              },
            ),
            const Gap(8),
            SizedBox(
              height: 40,
              width: 120,
              child: Consumer(
                builder: (_, ref, __) {
                  final untilFill = ref.watch(
                    homeControllerProvider.select((value) => value.untilFill),
                  );

                  final canFiil = untilFill <= Duration.zero;

                  return AppButton.outline(
                    text:
                        canFiil ? 'Закрасить' : formatter.countdown(untilFill),
                    padding: EdgeInsets.zero,
                    isDisabled: !canFiil,
                    onTap: controller.fillPixel,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
