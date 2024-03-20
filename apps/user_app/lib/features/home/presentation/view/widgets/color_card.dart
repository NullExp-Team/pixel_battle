part of '../home_screen.dart';

class _ColorCard extends HookConsumerWidget {
  const _ColorCard({
    required this.color,
    this.isSelected = false,
    required this.onTap,
  });

  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final borderColor = Color.lerp(color, Colors.black, 0.2)!;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: isSelected ? 6 : 2,
          color: isSelected
              ? Color.lerp(borderColor, Colors.black, 0.2)!
              : borderColor,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(6),
          splashColor: borderColor,
          highlightColor: borderColor,
          onTap: onTap,
        ),
      ),
    );
  }
}
