part of '../home_screen.dart';

class _BottomPanel extends HookConsumerWidget {
  const _BottomPanel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(homeControllerProvider.notifier);

    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: colors.background,
        border: Border.all(color: colors.divider, strokeAlign: 1),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Padding(
        padding: pagePadding,
        child: Row(
          children: [
            const Spacer(),
            Consumer(
              builder: (_, ref, __) {
                final color = ref.watch(
                  homeControllerProvider.select((value) => value.selectedColor),
                );
                return Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 2,
                      color: Color.lerp(color, Colors.black, 0.2)!,
                    ),
                  ),
                );
              },
            ),
            const Gap(8),
            SizedBox(
              height: 40,
              width: 120,
              child: AppButton.outline(
                text: 'Закрасить',
                padding: EdgeInsets.zero,
                onTap: controller.fillPixel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
