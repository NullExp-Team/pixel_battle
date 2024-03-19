// ignore_for_file: parameter_assignments

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:shared/canvas/pixel_field.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math_64.dart' as vector_math_64;
import '../controller/home_controller.dart';

part 'widgets/bottom_panel.dart';
part 'widgets/color_picker_bottom_sheet.dart';
part 'widgets/color_card.dart';
part 'widgets/zoom_buttons.dart';

const minScale = 1.0;
const maxScale = 100.0;

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
        backgroundColor: colors.backgroundMinor,
        body: Stack(
          children: [
            PixelField(
              transformationController: transformationController,
              maxScale: maxScale,
              minScale: minScale,
              selectedPixel: state.selectedPixelPosition,
              onPixelSelectionChanged: controller.updateSelectedPosition,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _BottomPanel(
                transformationController: transformationController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
