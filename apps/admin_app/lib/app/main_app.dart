import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared/canvas/pixel_field.dart';
import 'package:shared/shared.dart';

import 'controller/admin_controller.dart';
// import 'package:shared/canvas/canvas.dart';

class MainApp extends HookConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    final state = ref.watch(adminControllerProvider);
    final controller = ref.watch(adminControllerProvider.notifier);
    final dio = ref.read(dioProvider);
    dio.post(
      "http://pixel-battle.k-lab.su/admin/login",
      data: AdminLoginData(
        username: "Aboba",
        password: "12345678AAA",
      ).toJson(),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Рисовашка Aдминка',
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
      home: Scaffold(
        body: PixelField(
          maxScale: 100,
          minScale: 1,
          selectedPixel: state.selectedPixelPosition,
          onPixelSelectionChanged: controller.updateSelectedPosition,
        ),
      ),
    );
  }
}
