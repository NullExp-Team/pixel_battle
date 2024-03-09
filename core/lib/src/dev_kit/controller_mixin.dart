import 'package:dev_kit/core_dev_kit.dart';

import '../../../../core.dart';

typedef BaseApiError = Object;

/// Предоставляет вспомогательные методы и доступ к полезным провайдеры для утилит и апи, относящихся к приложению.
/// Может быть использован на класс, не являющийся [Notifier] или [AsyncNotifier], а имплементирующий только [IRef],
/// что позволяет впоследствии использовать его напрямую в [Provider], а не [NotifierProvider].
///
/// Пример:
/// ```dart
/// final provider = Provider(MyRepository.new);
/// class MyRepository with RefUtils {
///  MyRepository(this.ref);
///  @override
///  final Ref ref;
///  ...
/// }
/// ```
mixin ControllerMixin implements IRef, IApiWrap<BaseApiError> {
  // Утилиты
  @protected
  ToastManager get toast => ref.watch(toastManagerProvider);
  @protected
  StackRouter get router => ref.watch(appRouterProvider);

  @override
  late final ApiWrapController<BaseApiError> wrapController =
      ref.watch(appApiWrapControllerProvider('$hashCode'));
}
