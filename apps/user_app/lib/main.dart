// ignore_for_file: scoped_providers_should_specify_dependencies

import 'package:app_runner/app_runner.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'api/user_web_socket_client.dart';
import 'app/app_splash.dart';
import 'app/main_app.dart';
import 'router/app_router_create_fn.dart';

void main() {
  FlavorManager.initial(FlavorType.develop);

  const splashDuration = Duration(milliseconds: 5000);

  final widgetConfiguration = WidgetConfiguration(
    child: ProviderScope(
      overrides: [
        appRouterProvider.overrideWith(appRouterProviderFn),
        webSocketClientProvider.overrideWith(createUserWebSocketClient),
      ],
      child: Consumer(
        builder: (context, ref, _) {
          return AppBuilder(
            preInitialize: (binding) async {
              final locale = LocaleSettings.useDeviceLocale();
              Intl.defaultLocale = locale.languageCode;

              SystemChrome.setSystemUIOverlayStyle(
                const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                  // For Android (dark - dark icons)
                  statusBarIconBrightness: Brightness.dark,
                  // For iOS (light - dark icons)
                  statusBarBrightness: Brightness.light,
                ),
              );

              await Future.wait(
                [
                  PersistenceStorage.init(HivePersistenceStorage.build()),
                  ref.read(sharedPreferencesProvider.future),
                  Future.delayed(splashDuration),
                ],
              );
            },
            builder: (context, snapshot, _) => TranslationProvider(
              child: DevicePreview(
                // Комментить для тестов вёрстки
                enabled: false,
                backgroundColor: AppColors.light.background,
                builder: (_) => switch (snapshot.connectionState) {
                  ConnectionState.done => const MainApp(),
                  _ => const AppSplash(
                      duration: splashDuration,
                    ),
                },
              ),
            ),
          );
        },
      ),
    ),
    onFlutterError: (e) {
      logger.error(error: e, stack: e.stack);
    },
  );

  appRunner(
    RunnerConfiguration(
      widgetConfig: widgetConfiguration,
      onPlatformError: (e, s) {
        logger.error(error: e, stack: s);
        return true;
      },
    ),
  );
}
