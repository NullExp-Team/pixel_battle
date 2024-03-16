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
  }) = _HomeControllerState;
}

@Riverpod()
class HomeController extends _$HomeController with ControllerMixin {
  @override
  HomeControllerState build() => HomeControllerState(
        selectedColor: Colors.red,
        selectedPixelPosition: null,
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
    final point = state.selectedPixelPosition;
    if (point == null) return;

    await apiWrap(
      () => api.request(
        AppRequest.updatePixel(
          UpdatePixelData(
            x: point.dx.toInt(),
            y: point.dy.toInt(),
            color: state.selectedColor,
          ),
        ),
      ),
    );
  }
}
