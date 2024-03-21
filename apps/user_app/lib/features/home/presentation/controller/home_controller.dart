import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import '../view/home_screen.dart';
import 'fill_pixel_cooldown_provider.dart';

part 'home_controller.freezed.dart';
part 'home_controller.g.dart';

@freezed
class HomeControllerState with _$HomeControllerState {
  factory HomeControllerState({
    required Color selectedColor,
    required Offset? selectedPixelPosition,
    required Duration untilFill,
  }) = _HomeControllerState;
}

@Riverpod(dependencies: [fillPixelCooldown, fillPixelCooldown])
class HomeController extends _$HomeController with ControllerMixin {
  @override
  HomeControllerState build() => HomeControllerState(
        selectedColor: pixelAvailableColors.first,
        selectedPixelPosition: null,
        untilFill: Duration.zero,
      );

  // Update methods

  void updateColor(Color color) {
    state = state.copyWith(selectedColor: color);
  }

  Future<void> updateSelectedPosition(Offset position) async {
    if (position == state.selectedPixelPosition) {
      await fillPixel();
      return;
    }
    state = state.copyWith(selectedPixelPosition: position);
  }

  // Business logic

  Future<void> fillPixel() async {
    final offset = state.selectedPixelPosition;
    if (offset == null) return;

    final cooldown = await apiWrapStrictSingle(
      () => ref.read(fillPixelCooldownProvider.future),
    );

    await apiWrap(
      () => api.request(
        AppRequest.updatePixel(
          UpdatePixelData(
            x: offset.dx.toInt(),
            y: offset.dy.toInt(),
            color: state.selectedColor,
          ),
        ),
      ),
      rateLimiter: Throttle(
        duration: cooldown,
        onTickCooldown: (remainingTime) => state = state.copyWith(
          untilFill: remainingTime,
        ),
      ),
    );
  }
}
