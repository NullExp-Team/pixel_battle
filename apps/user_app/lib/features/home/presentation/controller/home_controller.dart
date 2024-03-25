import 'dart:ui' as ui;

import 'package:core/core.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

import '../view/home_screen.dart';

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
  WebSocketApi get _api => ref.watch(webSocketApiProvider.notifier);

  @override
  HomeControllerState build() {
    ref.listen(fillPixelCooldownProvider, (_, __) {});

    return HomeControllerState(
      selectedColor: pixelAvailableColors.first,
      selectedPixelPosition: null,
      untilFill: Duration.zero,
    );
  }

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

    await apiWrap(
      () => _api.request(
        AppRequest.updateSelection(
          UpdateSelectionData(
            position: Position(
              x: position.dx.toInt(),
              y: position.dy.toInt(),
            ),
          ),
        ),
      ),
    );
  }

  // Business logic

  Future<void> fillPixel() async {
    final offset = state.selectedPixelPosition;
    if (offset == null) return;

    final cooldown = await apiWrapStrictSingle(
      () => ref.read(fillPixelCooldownProvider.future),
    );

    await apiWrap(
      () => _api.request(
        AppRequest.updatePixel(
          UpdatePixelData(
            x: offset.dx.toInt(),
            y: offset.dy.toInt(),
            color: state.selectedColor,
          ),
        ),
      ),
      showErrorToast: false,
      rateLimiter: Throttle(
        duration: cooldown,
        onTickCooldown: (remainingTime) => state = state.copyWith(
          untilFill: remainingTime,
        ),
      ),
    );
  }

  Future<void> shareImage() async {
    final image = await ref.read(fieldImageServiceProvider.future);

    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);

    final pngBytes = byteData!.buffer.asUint8List();

    await FileSaver.instance.saveFile(
      name: 'pixel_battle.png',
      bytes: pngBytes,
    );
  }
}
