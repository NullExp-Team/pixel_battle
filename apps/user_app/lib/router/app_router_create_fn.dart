import 'package:core/core.dart';

import '../features/auth/domain/user_service.dart';
import 'app_router.dart';

AppRouter appRouterProviderFn(ProviderRef<StackRouter> ref) {
  final userAuthorizedProvider =
      userServiceProvider.select((value) => value != null);

  final router = AppRouter(
    userAuthorized: () => ref.read(userAuthorizedProvider),
  );

  ref.listen(userAuthorizedProvider, (_, userAuthorized) {
    if (userAuthorized) return;

    final route = router.guard(router.current.name);
    if (route != null) router.replaceAll([route]);
  });

  return router;
}
