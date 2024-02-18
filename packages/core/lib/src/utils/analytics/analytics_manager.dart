import 'package:firebase_analytics/firebase_analytics.dart';

import '../../../core.dart';

part 'analytics_manager.g.dart';

@Riverpod(keepAlive: true)
AnalyticsManager analyticsManager(AnalyticsManagerRef ref) {
  return AnalyticsManager();
}

class AnalyticsManager {
  FirebaseAnalytics get _analytics => FirebaseAnalytics.instance;

  Future<void> _event(
    String name,
    Map<String, Object?> params, {
    bool logging = true,
  }) async {
    params.removeWhere((key, value) => value == null);

    await _analytics.logEvent(
      name: name,
      parameters: params,
    );

    if (logging) {
      logger.analyticsEvent(name, params, StackTrace.current);
    }
  }

  void testEvent() {
    _event(
      'test',
      {
        'test': 'test',
      },
    );
  }

  void route(String? route, String? previousRoute) {
    // final name = route.settings.name;
    // final previousName = previousRoute?.settings.name;

    _event(
      'route',
      {
        'to': route,
        'from': previousRoute,
      },
      logging: false,
    );

    logger.route(
      name: route,
      previousName: previousRoute,
    );
  }
}
