import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared/canvas/pixel_field.dart';

import '../controller/home_controller.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeControllerProvider);
    final controller = ref.watch(homeControllerProvider.notifier);

    return Scaffold(
      body: PixelField(
        selectedPixel: state.selectedPixelPosition,
        onPixelSelectionChanged: controller.updateSelectedPosition,
      ),
    );
  }
}
