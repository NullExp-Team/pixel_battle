import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core.dart';

part 'toast_manager.g.dart';

@Riverpod(keepAlive: true)
ToastManager toastManager(ToastManagerRef ref) {
  return ToastManager(
    FToast().init(AppWrapper.currentContext),
  );
}

enum ToastPosition {
  top,
  bottom,
}

class ToastManager {
  const ToastManager(
    FToast fToast,
  ) : _fToast = fToast;

  final FToast _fToast;

  static final Completer _completer = Completer();

  static void allowDisplayToasts() {
    if (!_completer.isCompleted) _completer.complete();
  }

  static const _apiErrorFormatter = ApiErrorFormatter();

  Duration _calculateDuration({String? text, String? debugText}) {
    return Duration(
      milliseconds:
          4500 + (text?.length ?? 0) * 35 + (debugText?.length ?? 0) * 10,
    );
  }

  Future<void> show({
    required ToastType type,
    String? title,
    String? text,
    String? debugText,
    ApiError<BaseApiError>? apiError,
    bool isDebug = false,
    ToastPosition? position,
  }) async {
    if (isDebug && !FlavorManager.isDev) return;

    if (!_completer.isCompleted) await _completer.future;

    title = title != null && title.isEmpty ? null : title;

    final apiErrorDebugText =
        apiError != null ? _apiErrorFormatter.format(apiError).$3 : null;

    debugText =
        '${debugText ?? ''}${apiErrorDebugText != null ? '\n\n $apiErrorDebugText' : ''}'
            .trimOrNull();

    _fToast.showToast(
      child: ToastCard(
        type: type,
        duration: _calculateDuration(text: text, debugText: debugText),
        onDismissed: hideCurrent,
        title: title != null ? SText.text(title) : null,
        text: text != null
            ? SText.text(
                text,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                maxLines: 16,
                overflow: TextOverflow.ellipsis,
              )
            : null,
        debugText: FlavorManager.isDev && debugText != null
            ? SText.subtitle(
                debugText,
                fontWeight: FontWeight.w400,
              )
            : null,
        isDebug: isDebug,
      ),
      gravity: switch (position) {
        ToastPosition.top => ToastGravity.TOP,
        ToastPosition.bottom => ToastGravity.BOTTOM,
        null => ToastGravity.BOTTOM,
      },
      // maximum Duration is 3 minutes
      toastDuration: const Duration(minutes: 3),
      fadeDuration: const Duration(milliseconds: 200),
    );
  }

  void info({
    String? title,
    String? text,
    String? debugText,
    ApiError<BaseApiError>? apiError,
    bool isDebug = false,
    ToastPosition? position,
  }) =>
      show(
        text: text,
        type: ToastType.info,
        title: title,
        debugText: debugText,
        apiError: apiError,
        isDebug: isDebug,
        position: position,
      );

  void error({
    String? title,
    String? text,
    String? debugText,
    ApiError<BaseApiError>? apiError,
    bool isDebug = false,
    ToastPosition? position,
  }) =>
      show(
        text: text,
        type: ToastType.error,
        title: title,
        debugText: debugText,
        apiError: apiError,
        isDebug: isDebug,
        position: position,
      );

  void success({
    String? title,
    String? text,
    String? debugText,
    ApiError<BaseApiError>? apiError,
    bool isDebug = false,
    ToastPosition? position,
  }) =>
      show(
        text: text,
        type: ToastType.success,
        title: title,
        debugText: debugText,
        apiError: apiError,
        isDebug: isDebug,
        position: position,
      );

  void apiError(
    ApiError<BaseApiError> apiError, {
    bool isDebug = false,
    ToastPosition? position,
  }) {
    final (title, text, debugText) = _apiErrorFormatter.format(apiError);

    show(
      text: text,
      debugText: debugText,
      title: title,
      isDebug: isDebug,
      type: ToastType.error,
      position: position,
    );
  }

  void hideCurrent() => _fToast.removeCustomToast();
}
