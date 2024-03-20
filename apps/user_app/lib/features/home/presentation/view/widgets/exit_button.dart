part of '../home_screen.dart';

class _ExitButton extends HookConsumerWidget {
  const _ExitButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 40,
      child: Consumer(
        builder: (context, ref, _) {
          final nickname = ref.watch(
            userServiceProvider.select((value) => value?.nickname ?? ''),
          );
          return AppButton.outline(
            text: nickname,
            isExtended: false,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            borderRadius: BorderRadius.circular(99),
            leftIcon: const Icon(Icons.exit_to_app),
            onTap: () {
              context.router.replaceAll([const LoginRoute()]);
            },
          );
        },
      ),
    );
  }
}
