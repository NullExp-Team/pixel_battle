import 'dart:math';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

part 'home_controller.freezed.dart';
part 'home_controller.g.dart';

@freezed
class HomeControllerState with _$HomeControllerState {
  factory HomeControllerState({
    required Color selectedColor,
    required Point<int>? selectedPixelPosition,
  }) = _HomeControllerState;
}

@Riverpod()
class HomeController extends _$HomeController with ControllerMixin {
  @override
  HomeControllerState build() => HomeControllerState(
        selectedColor: Colors.red,
        selectedPixelPosition: null,
      );

  WebSocketApi get _api => ref.watch(webSocketApiProvider.notifier);

  // Update methods

  void updateColor(Color color) {
    state = state.copyWith(selectedColor: color);
  }

  void updateSelectedPosition(Point<int>? position) {
    state = state.copyWith(selectedPixelPosition: position);
  }

  // Business logic

  Future<void> fillPixel() async {
    final point = state.selectedPixelPosition;
    if (point == null) return;

    await apiWrap(
      () => _api.request<NoResponse>(
        AppRequest.updatePixel(
          UpdatePixel(
            x: point.x,
            y: point.y,
            // TODO: Convert to hex
            color: state.selectedColor.toString(),
            actionTime: DateTime.now(),
          ),
        ),
      ),
    );
  }
}