import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:shared/canvas/pixel_field.dart';

import '../controller/home_controller.dart';

part 'widgets/bottom_panel.dart';
part 'widgets/color_picker_bottom_sheet.dart';
part 'widgets/color_card.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeControllerProvider);
    final controller = ref.watch(homeControllerProvider.notifier);

    final transformationController = useTransformationController();

    return AutoUnfocus(
      child: Scaffold(
        body: Stack(
          children: [
            PixelField(
              transformationController: transformationController,
              selectedPixel: state.selectedPixelPosition,
              onPixelSelectionChanged: controller.updateSelectedPosition,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _BottomPanel(
                onZoomIn: () {},
                onZoomOut: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
