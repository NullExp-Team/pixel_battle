import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResetFieldModal extends HookConsumerWidget {
  const ResetFieldModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 320,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SText.title('Пересоздание холста'),
          const Gap(12),
          const SizedBox(
            height: 40,
            child: Row(
              children: [
                SText.text('Ширина:'),
                AppTextField(),
              ],
            ),
          ),
          const Gap(12),
          const SizedBox(
            height: 40,
            child: Row(
              children: [
                SText.text('Высота:'),
                AppTextField(),
              ],
            ),
          ),
          const Gap(12),
          SizedBox(
            height: 40,
            child: AppButton.fill(
              text: 'Пересоздать',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
