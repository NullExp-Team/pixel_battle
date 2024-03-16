import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

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

@Riverpod()
class HomeController extends _$HomeController with ControllerMixin {
  @override
  HomeControllerState build() => HomeControllerState(
        selectedColor: Colors.red,
        selectedPixelPosition: null,
        untilFill: Duration.zero,
      );

  // Update methods

  void updateColor(Color color) {
    state = state.copyWith(selectedColor: color);
  }

  void updateSelectedPosition(Offset? position) {
    state = state.copyWith(selectedPixelPosition: position);
  }

  // Business logic

  Future<void> fillPixel() async {
    final offset = state.selectedPixelPosition;
    if (offset == null) return;

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
        duration: const Duration(seconds: 3),
        onTickCooldown: (remainingTime) => state = state.copyWith(
          untilFill: remainingTime,
        ),
      ),
    );
  }
}
