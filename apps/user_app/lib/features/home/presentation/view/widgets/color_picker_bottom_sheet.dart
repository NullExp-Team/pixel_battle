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
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.9,
      ),
      decoration: BoxDecoration(
        color: colors.background,
        border: Border.all(color: colors.divider, strokeAlign: 1),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(38)),
      ),
      padding: pagePadding.copyWith(top: 12),
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
          Flexible(
            child: Consumer(
              builder: (_, ref, __) {
                final selectedColor = ref.watch(
                  homeControllerProvider.select((value) => value.selectedColor),
                );

                return GridView.builder(
                  padding: const EdgeInsets.only(bottom: 36),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  shrinkWrap: true,
                  itemCount: pixelAvailableColors.length,
                  itemBuilder: (context, index) {
                    final color = pixelAvailableColors[index];
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
          ),
        ],
      ),
    );
  }
}

final pixelAvailableColors = [
  const Color(0xFFbe4a2f),
  const Color(0xFFd77643),
  const Color(0xFFead4aa),
  const Color(0xFFe4a672),
  const Color(0xFFb86f50),
  const Color(0xFF733e39),
  const Color(0xFF3e2731),
  const Color(0xFFa22633),
  const Color(0xFFe43b44),
  const Color(0xFFf77622),
  const Color(0xFFfeae34),
  const Color(0xFF63c74d),
  const Color(0xFF3e8948),
  const Color(0xFF265c42),
  const Color(0xFF193c3e),
  const Color(0xFF124e89),
  const Color(0xFF0099db),
  const Color(0xFF2ce8f5),
  const Color(0xFFffffff),
  const Color(0xFFc0cbdc),
  const Color(0xFF8b9bb4),
  const Color(0xFF5a6988),
  const Color(0xFF3a4466),
  const Color(0xFF262b44),
  const Color(0xFF181425),
  const Color(0xFFff0044),
  const Color(0xFF68386c),
  const Color(0xFFb55088),
  const Color(0xFFf6757a),
  const Color(0xFFe8b796),
  const Color(0xFFc28569)
];
