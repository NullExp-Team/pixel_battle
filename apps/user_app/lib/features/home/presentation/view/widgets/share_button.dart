part of '../home_screen.dart';

class _ShareButton extends HookConsumerWidget {
  const _ShareButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(homeControllerProvider.notifier);

    return IconButton.outlined(
      onPressed: controller.shareImage,
      icon: Icon(
        Icons.save_alt,
        color: colors.text,
      ),
    );
  }
}
