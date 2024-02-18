import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/widgets.dart';

import '../../../../core.dart';

class CrashlyticsManager {
  static FirebaseCrashlytics get _crashlytics => FirebaseCrashlytics.instance;

  // late final _toasts = ToastManager(
  //   FToast().init(AppWrap.currentContext),
  // );

  void handleError(Object error, StackTrace stackTrace) {
    logger.log(
      Log.error,
      error: error,
      stack: stackTrace,
    );

    // _toasts.error(
    //   error.toString(),
    //   title: 'Internal Error',
    //   debugText: stackTrace.toString(),
    // );

    _crashlytics.recordError(error, stackTrace);
  }

  void handleFlutterError(FlutterErrorDetails details) {
    logger.log(
      Log.error,
      title: details.summary.toString(),
      error: details.exception,
      stack: details.stack,
    );

    // _toasts.error(
    //   details.exception.toString(),
    //   title: 'Internal Flutter Error',
    //   debugText: details.stack.toString(),
    // );

    _crashlytics.recordFlutterFatalError(details);
  }
}
