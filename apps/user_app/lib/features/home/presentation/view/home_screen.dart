// ignore_for_file: parameter_assignments

import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared/shared.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math_64.dart' as vector_math_64;
import '../../../../router/app_router.dart';
import '../../../auth/domain/user_service.dart';
import '../controller/home_controller.dart';

part 'widgets/bottom_panel.dart';
part 'widgets/color_picker_bottom_sheet.dart';
part 'widgets/color_card.dart';
part 'widgets/zoom_buttons.dart';
part 'widgets/exit_button.dart';
part 'widgets/online_count.dart';
part 'widgets/connection_status.dart';
part 'widgets/share_button.dart';

part 'home_screen.g.dart';

const minScale = 0.25;
const maxScale = 25.0;

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userServiceProvider);
    final state = ref.watch(homeControllerProvider);
    final controller = ref.watch(homeControllerProvider.notifier);
    final fieldState = ref
        .watch(fieldStateServiceProvider.select((value) => value.valueOrNull));

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
              selections: fieldState?.selections ?? {},
              onPixelSelectionChanged: controller.updateSelectedPosition,
              username: userState?.nickname ?? '',
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _BottomPanel(
                transformationController: transformationController,
              ),
            ),
            const SafeArea(
              minimum: EdgeInsets.all(12),
              child: Row(
                children: [
                  _ExitButton(),
                  Spacer(),
                  _OnlineCount(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
