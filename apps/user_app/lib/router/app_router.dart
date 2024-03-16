import 'package:core/core.dart';
import '../features/auth/presentation/view/login_screen.dart';
import '../features/home/presentation/view/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  AppRouter({required this.userAuthorized});

  final bool Function() userAuthorized;

  PageRouteInfo? guard(String name) {
    if (!userAuthorized() && ![LoginRoute.name].contains(name)) {
      return const LoginRoute();
    }
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final name = resolver.route.name;

    final route = guard(name);

    if (route != null) {
      replaceAll([route]);
      return resolver.next(false);
    }

    resolver.next();
  }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
      ];
}
