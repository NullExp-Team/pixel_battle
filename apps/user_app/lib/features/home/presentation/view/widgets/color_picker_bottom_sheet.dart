part of '../home_screen.dart';

void _showColorPickerBottomSheet({required BuildContext context}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    elevation: 0,
    builder: (_) {
      return const _ColorPickerBottomSheet();
    },
  );
}

class _ColorPickerBottomSheet extends HookConsumerWidget {
  const _ColorPickerBottomSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(homeControllerProvider.notifier);

    return Container(
      decoration: BoxDecoration(
        color: colors.background,
        border: Border.all(color: colors.divider, strokeAlign: 1),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(38)),
      ),
      padding: pagePadding.copyWith(top: 12, bottom: 36),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Expanded(child: SizedBox()),
              const Expanded(
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: SText.title(
                    'Выбор цвета',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: IconButton(
                    onPressed: context.popRoute,
                    constraints: const BoxConstraints.tightFor(
                      width: 32,
                      height: 32,
                    ),
                    padding: EdgeInsets.zero,
                    style: IconButton.styleFrom(
                      backgroundColor: colors.backgroundMinor,
                    ),
                    icon: Icon(
                      Icons.close_rounded,
                      color: colors.textMinor,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Gap(12),
          Consumer(
            builder: (_, ref, __) {
              final selectedColor = ref.watch(
                homeControllerProvider.select((value) => value.selectedColor),
              );

              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                shrinkWrap: true,
                primary: false,
                itemCount: _availableColors.length,
                itemBuilder: (context, index) {
                  final color = _availableColors[index];
                  return _ColorCard(
                    color: color,
                    isSelected: color == selectedColor,
                    onTap: () async {
                      controller.updateColor(color);

                      await Future.delayed(const Duration(milliseconds: 300));

                      // ignore: unawaited_futures
                      if (context.mounted) context.popRoute();
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

final _availableColors = [
  const Color(0xFFad253d),
  const Color(0xFFf6aa3a),
  const Color(0xFFeb5427),
  const Color(0xFFfad65b),
  const Color(0xFF48a06d),
  const Color(0xFF9ae96c),
  const Color(0xFF347071),
  const Color(0xFF4d8fe3),
  const Color(0xFF7ee6f3),
  const Color(0xFF4440bb),
  const Color(0xFF6662f7),
  const Color(0xFF772b98),
  const Color(0xFFeb4e81),
  const Color(0xFFf09eaa),
  const Color(0xFF000000),
  const Color(0xFF898d90),
  const Color(0xFF956a35),
  const Color(0xFFffffff),
  const Color(0xFF87c428),
  const Color(0xFFff0000),
];
