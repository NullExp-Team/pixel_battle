import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'analytics_manager.dart';

class AnalyticsNavigatorObserver extends AutoRouterObserver {
  AnalyticsNavigatorObserver({
    required this.analytics,
  });

  final AnalyticsManager analytics;

  @override
  void didPush(Route route, Route? previousRoute) {
    analytics.route(route.settings.name, previousRoute?.settings.name);
    super.didPush(route, previousRoute);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    analytics.route(route.name, previousRoute.name);
    super.didChangeTabRoute(route, previousRoute);
  }
}
