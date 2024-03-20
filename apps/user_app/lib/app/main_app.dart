import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../router/app_router_config_provider.dart';

// import '../router/app_router_config_provider.dart';

class MainApp extends HookConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final routerConfig = ref.watch(appRouterConfigProvider);

    // final prefs = ref.watch(sharedPreferencesProvider).requireValue;

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Рисовашка',
      builder: AppWrapper.builder,
      locale: FlavorManager.isDev
          ? DevicePreview.locale(context)
          : TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      themeMode: themeMode,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      routerConfig: routerConfig,
    );
  }
}
