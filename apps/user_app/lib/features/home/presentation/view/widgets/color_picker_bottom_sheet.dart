part of '../home_screen.dart';

void _showColorPickerBottomSheet({required BuildContext context}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    constraints: BoxConstraints(
      maxHeight: MediaQuery.sizeOf(context).height * 0.9,
      maxWidth: 480,
    ),
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
                    maxCrossAxisExtent: 64,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                  ),
                  shrinkWrap: true,
                  itemCount: pixelAvailableColors.length,
                  itemBuilder: (context, index) {
                    final color = pixelAvailableColors[index];
                    return _ColorCard(
                      color: color,
                      cornerRadius: 6,
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
  const Color(0xFF060608),
  const Color(0xFF141013),
  const Color(0xFF3b1725),
  const Color(0xFF73172d),
  const Color(0xFFb4202a),
  const Color(0xFFdf3e23),
  const Color(0xFFfa6a0a),
  const Color(0xFFf9a31b),
  const Color(0xFFffd541),
  const Color(0xFFfffc40),
  const Color(0xFFd6f264),
  const Color(0xFF9cdb43),
  const Color(0xFF59c135),
  const Color(0xFF14a02e),
  const Color(0xFF1a7a3e),
  const Color(0xFF24523b),
  const Color(0xFF122020),
  const Color(0xFF143464),
  const Color(0xFF285cc4),
  const Color(0xFF249fde),
  const Color(0xFF20d6c7),
  const Color(0xFFa6fcdb),
  const Color(0xFFffffff),
  const Color(0xFFfef3c0),
  const Color(0xFFfad6b8),
  const Color(0xFFf5a097),
  const Color(0xFFe86a73),
  const Color(0xFFbc4a9b),
  const Color(0xFF793a80),
  const Color(0xFF403353),
  const Color(0xFF242234),
  const Color(0xFF221c1a),
  const Color(0xFF322b28),
  const Color(0xFF71413b),
  const Color(0xFFbb7547),
  const Color(0xFFdba463),
  const Color(0xFFf4d29c),
  const Color(0xFFdae0ea),
  const Color(0xFFb3b9d1),
  const Color(0xFF8b93af),
  const Color(0xFF6d758d),
  const Color(0xFF4a5462),
  const Color(0xFF333941),
  const Color(0xFF422433),
  const Color(0xFF5b3138),
  const Color(0xFF8e5252),
  const Color(0xFFba756a),
  const Color(0xFFe9b5a3),
  const Color(0xFFe3e6ff),
  const Color(0xFFb9bffb),
  const Color(0xFF849be4),
  const Color(0xFF588dbe),
  const Color(0xFF477d85),
  const Color(0xFF23674e),
  const Color(0xFF328464),
  const Color(0xFF5daf8d),
  const Color(0xFF92dcba),
  const Color(0xFFcdf7e2),
  const Color(0xFFe4d2aa),
  const Color(0xFFc7b08b),
  const Color(0xFFa08662),
  const Color(0xFF796755),
  const Color(0xFF5a4e44),
  const Color(0xFF423934),
];
