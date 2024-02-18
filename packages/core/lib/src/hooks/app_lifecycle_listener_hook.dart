import 'package:flutter/widgets.dart';

import '../../core.dart';

void useAppLifecycleListener({
  void Function()? onResume,
  void Function()? onInactive,
  void Function()? onHide,
  void Function()? onShow,
  void Function()? onPause,
  void Function()? onRestart,
  void Function()? onDetach,
}) {
  useEffect(
    () {
      final listiner = AppLifecycleListener(
        onResume: onResume,
        onInactive: onInactive,
        onHide: onHide,
        onShow: onShow,
        onPause: onPause,
        onRestart: onRestart,
        onDetach: onDetach,
      );
      return listiner.dispose;
    },
    const [],
  );
}
