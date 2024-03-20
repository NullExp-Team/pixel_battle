import 'dart:async';

import '../../../core.dart';

/// Расширение на миксин, которое позволяет задать специфичную для приложения логику
/// Например, показ тоста с ошибками валидации
extension ValidatorMixinX on ValidatorMixin {
  // SharedValidation get shared => ref.read(sharedValidationProvider.notifier);

  Future<bool> validateAll({
    bool softMode = false,
    bool showToasts = true,
  }) async {
    // ignore: invalid_use_of_protected_member
    final errors = await processValidators(allValidators, softMode: softMode);

    final toast = ref.read(toastManagerProvider);

    if (errors.isNotEmpty && showToasts) {
      toast.error(
        title: t.fixValidationErrors(errorsCount: errors.length),
        text: errors
            .mapIndexed(
              (i, rec) =>
                  '${errors.length > 1 ? '${i + 1}) ' : ''}${rec.label != null ? '${rec.label}: ' : ''}${rec.error}',
            )
            .join('\n'),
      );
    }

    return errors.isEmpty;
  }
}
