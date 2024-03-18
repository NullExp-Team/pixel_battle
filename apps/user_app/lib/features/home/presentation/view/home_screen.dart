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

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeControllerProvider);
    final controller = ref.watch(homeControllerProvider.notifier);

    final transformationController = useTransformationController();

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 150),
    );

    const minScale = 1.0;
    const maxScale = 100.0;

    Future<void> animateZoom(double scaleFactor) async {
      animationController.reset();

      final beginMatrix = transformationController.value;

      final curScale = beginMatrix.getMaxScaleOnAxis();

      if (curScale * scaleFactor > maxScale) {
        scaleFactor = maxScale / curScale;
      } else if (curScale * scaleFactor < minScale) {
        scaleFactor = minScale / curScale;
      }

      final endMatrix = _calculateZoomMatrix(
        matrix4: beginMatrix,
        size: MediaQuery.sizeOf(context),
        scaleFactor: scaleFactor,
      );

      final animation =
          Matrix4Tween(begin: beginMatrix, end: endMatrix).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Curves.easeInOut,
        ),
      );

      void listener() => transformationController.value = animation.value;

      animation.addListener(listener);
      await animationController.forward();
      animation.removeListener(listener);
    }

    return AutoUnfocus(
      child: Scaffold(
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
                onZoomIn: () => animateZoom(1.5),
                onZoomOut: () => animateZoom(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Matrix4 _calculateZoomMatrix({
  required Matrix4 matrix4,
  required Size size,
  required double scaleFactor,
}) {
  final value = matrix4.clone();

  final translation = value.getTranslation();

  final centerVector = vector_math_64.Vector3(
    size.width / 2,
    size.height / 2,
    0,
  );

  translation
    ..sub(centerVector)
    ..scale(scaleFactor)
    ..add(centerVector);

  value
    ..setTranslation(translation)
    ..scale(scaleFactor, scaleFactor)
    ..setTranslation(translation);

  return value;
}
