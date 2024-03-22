import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:shared/shared.dart';

import '../../controller/admin_controller.dart';

class ResetFieldModal extends HookConsumerWidget {
  ResetFieldModal({super.key, required this.currentFieldSize});

  final Size? currentFieldSize;
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(adminControllerProvider.notifier);
    widthController.text = currentFieldSize?.width.toInt().toString() ?? '';
    heightController.text = currentFieldSize?.height.toInt().toString() ?? '';

    return SizedBox(
      width: 280,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 40,
            alignment: Alignment.center,
            child: const SText.title('Пересоздание холста'),
          ),
          const Gap(12),
          SizedBox(
            height: 56,
            child: Row(
              children: [
                const SText.text('Ширина:'),
                const Spacer(),
                SizedBox(
                  width: 120,
                  child: AppTextField(
                    controller: widthController,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp('[0-9]'),
                      ),
                    ],
                    textAlign: TextAlign.center,
                    hintText:
                        currentFieldSize?.width.toInt().toString() ?? '64',
                  ),
                ),
              ],
            ),
          ),
          const Gap(12),
          SizedBox(
            height: 56,
            child: Row(
              children: [
                const SText.text('Высота:'),
                const Spacer(),
                SizedBox(
                  width: 120,
                  child: AppTextField(
                    controller: heightController,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp('[0-9]'),
                      ),
                    ],
                    textAlign: TextAlign.center,
                    hintText:
                        currentFieldSize?.width.toInt().toString() ?? '64',
                  ),
                ),
              ],
            ),
          ),
          const Gap(12),
          SizedBox(
            height: 40,
            child: AppButton.fill(
              text: 'Пересоздать',
              onTap: () {
                final width = int.tryParse(widthController.text) ??
                    currentFieldSize?.width.toInt() ??
                    64;
                final height = int.tryParse(heightController.text) ??
                    currentFieldSize?.height.toInt() ??
                    64;
                controller.resetField(width, height);
              },
            ),
          ),
        ],
      ),
    );
  }
}
