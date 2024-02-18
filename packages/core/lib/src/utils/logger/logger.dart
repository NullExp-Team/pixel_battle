import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:proxima_logger/proxima_logger.dart';

import 'log.dart';

final logger = AppLogger(
  settings: _settingsBuilder,
);

LogSettings _settingsBuilder(ILogType logType) {
  const logParts = [
    LogPart.stack,
    LogPart.error,
    LogPart.divider,
    LogPart.message,
  ];

  const skipStackTraceRegExp =
      'package:riverpod|api_wrap|app_button|logger|dio|controller_utils|dev_kit';

  return switch (logType) {
    Log.request || Log.response => const LogSettings(
        logParts: logParts,
        stackTraceMethodCount: 100,
        skipStackTraceRegExp: skipStackTraceRegExp,
      ),
    Log.route || Log.notification => const LogSettings(
        logParts: [
          LogPart.message,
        ],
        printEmoji: false,
        bottomBorder: false,
        leftBorder: false,
        skipStackTraceRegExp: skipStackTraceRegExp,
      ),
    Log.analytics => const LogSettings(
        logParts: [
          LogPart.stack,
          LogPart.message,
        ],
        stackTraceBeginIndex: 1,
        skipStackTraceRegExp: skipStackTraceRegExp,
      ),
    _ => const LogSettings(
        logParts: logParts,
        skipStackTraceRegExp: skipStackTraceRegExp,
      )
  };
}

class AppLogger extends ProximaLoggerBase {
  AppLogger({super.settings});

  void analyticsEvent(
    String name,
    Map<String, Object?> params, [
    StackTrace? stackTrace,
  ]) {
    log(
      Log.analytics,
      title: name,
      message: params,
      stack: stackTrace,
    );
  }

  void debug(String? title, [dynamic message]) {
    log(
      Log.debug,
      title: title,
      message: message,
    );
  }

  void error({
    String? title,
    StackTrace? stack,
    dynamic error,
    dynamic message,
  }) {
    log(
      Log.error,
      title: title,
      message: message,
      error: error,
      stack: stack,
    );
  }

  void route({required String? name, required String? previousName}) {
    log(
      Log.route,
      title: name,
    );
  }

  void notification(RemoteMessage message) {
    final notification = message.notification;
    final data = message.data;

    log(
      Log.notification,
      title: notification?.title ?? 'Unknown',
      message: switch ((notification != null, data.isNotEmpty)) {
        (true, true) => {
            'notification': notification!.body,
            'data': data,
          },
        (true, false) => notification!.body,
        (false, true) => data,
        (false, false) => null,
      },
    );
  }

  void request({
    required String method,
    required Uri uri,
    required Map<String, dynamic> parameters,
    required dynamic data,
    required StackTrace? stack,
  }) {
    final params = parameters..removeWhere((key, value) => value == null);

    log(
      Log.request,
      title: '$method $uri',
      stack: stack,
      message: switch ((params.isNotEmpty, data != null)) {
        (true, true) => {
            'params': parameters,
            'data': data,
          },
        (true, false) => params,
        (false, true) => data,
        (false, false) => null,
      },
    );
  }

  void response({
    required int status,
    required String? method,
    required Uri? url,
    required dynamic data,
  }) {
    logger.log(
      Log.response,
      title: '$status $method $url',
      message: data,
    );
  }
}
