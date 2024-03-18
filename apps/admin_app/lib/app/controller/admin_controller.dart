import 'dart:ui';

import 'package:core/core.dart';

part 'admin_controller.freezed.dart';
part 'admin_controller.g.dart';

@freezed
class AdminControllerState with _$AdminControllerState {
  factory AdminControllerState({
    required Offset? selectedPixelPosition,
  }) = _AdminControllerState;
}

@Riverpod()
class AdminController extends _$AdminController with ControllerMixin {
  @override
  AdminControllerState build() {
    return AdminControllerState(selectedPixelPosition: null);
  }

  void updateSelectedPosition(Offset? position) {
    state = state.copyWith(selectedPixelPosition: position);
  }
}
