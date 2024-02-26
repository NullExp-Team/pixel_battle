import 'package:dev_kit/core_dev_kit.dart' as dev_kit;

import '../../../core.dart';

part 'app_api_wrap_controller.g.dart';

@Riverpod(keepAlive: true)
ApiWrapController<BaseApiError> appApiWrapController(
  AppApiWrapControllerRef ref,
  String key,
) {
  final toast = ref.read(toastManagerProvider);

  /// Метод для обработки ошибок API c логгированием и показом тостов при необходимости.
  FutureOr<D?> onError<D>({
    required dev_kit.ApiError<BaseApiError> error,
    required FutureOr<D?> Function(dev_kit.ApiError<BaseApiError> error)? originalOnError,
    required bool showErrorToast,
  }) {
    if (showErrorToast) {
      toast.apiError(error);
    }

    if (error is InternalError<BaseApiError>) {
      logger.error(error: error.error, stack: error.stackTrace);
    }

    return originalOnError?.call(error);
  }

  return ApiWrapController<BaseApiError>(
    retry: Retry(maxAttempts: 0),
    onError: onError,
  );
}
