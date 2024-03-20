// ignore_for_file: parameter_assignments

part of '../home_screen.dart';

class _ZoomButtons extends HookConsumerWidget {
  const _ZoomButtons({
    required this.transformationController,
  });

  final TransformationController transformationController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 150),
    );

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

    return Row(
      children: [
        SizedBox(
          height: 40,
          child: AppButton.outline(
            text: '-',
            padding: EdgeInsets.zero,
            isExtended: false,
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(12),
            ),
            showLoading: false,
            onTap: () => animateZoom(0.5),
          ),
        ),
        SizedBox(
          height: 40,
          child: AppButton.outline(
            text: '+',
            padding: EdgeInsets.zero,
            isExtended: false,
            borderRadius: const BorderRadius.horizontal(
              right: Radius.circular(12),
            ),
            showLoading: false,
            onTap: () => animateZoom(2),
          ),
        ),
      ],
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
