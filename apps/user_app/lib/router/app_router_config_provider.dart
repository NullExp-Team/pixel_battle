import 'package:core/core.dart';
import 'package:flutter/widgets.dart';

import 'app_router.dart';

final appRouterConfigProvider = Provider<RouterConfig<UrlState>>((ref) {
  final router = ref.watch(appRouterProvider);

  return (router as AppRouter).config();
});
