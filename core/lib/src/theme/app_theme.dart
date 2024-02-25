import 'package:flutter/material.dart';

import '../../core.dart';

abstract class AppTheme {
  static ThemeData fromStyles({
    required ThemeData data,
    required AppColors colors,
    required AppTextStyles textStyles,
    required AppShadows shadows,
  }) {
    return data.copyWith(
      scaffoldBackgroundColor: colors.background,
      // colorScheme: data.colorScheme.copyWith(
      //   error: colors.error,
      // ),
      // primaryColor: colors.black,
      // appBarTheme: AppBarTheme(
      //   backgroundColor: colors.white,
      //   surfaceTintColor: colors.white,
      //   elevation: 0,
      //   scrolledUnderElevation: 8,
      //   shadowColor: colors.black.withOpacity(0.1),
      // ),
      // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //   // backgroundColor: colors.backgroundBottomNavBar,
      //   elevation: 0,
      //   // selectedItemColor: colors.iconPrimary,
      //   // unselectedItemColor: colors.iconPrimary.withOpacity(0.5),
      // ),
      // tooltipTheme: TooltipThemeData(
      //   decoration: BoxDecoration(
      //     color: colors.white,
      //     borderRadius: BorderRadius.circular(8),
      //     boxShadow: [shadows.dropMenu],
      //   ),
      //   textStyle: textStyles.textS,
      //   preferBelow: true,
      //   triggerMode: TooltipTriggerMode.tap,
      //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      // ),
      // scrollbarTheme: ScrollbarThemeData(
      //   thumbColor: MaterialStateProperty.all(colors.grey101),
      //   trackColor: MaterialStateProperty.all(colors.grey102),
      //   thickness: MaterialStateProperty.all(2),
      //   radius: const Radius.circular(1),
      //   interactive: true,
      //   crossAxisMargin: 3,
      // ),
      // dividerTheme: DividerThemeData(
      //   color: colors.grey102,
      //   space: 1,
      //   indent: 20,
      //   endIndent: 20,
      // ),
      // progressIndicatorTheme: ProgressIndicatorThemeData(
      //   color: colors.black,
      //   linearMinHeight: 31,
      // ),
      // textTheme: TextTheme(
      //   bodyMedium: textStyles.text,
      // ).apply(
      //   bodyColor: colors.black,
      //   displayColor: colors.black,
      // ),
      extensions: [
        colors,
        textStyles,
        shadows,
      ],
    );
  }

  static ThemeData light() => fromStyles(
        data: ThemeData.light(useMaterial3: true),
        colors: AppColors.light,
        textStyles: AppTextStyles.general,
        shadows: AppShadows.general,
      );

  static ThemeData dark() => fromStyles(
        data: ThemeData.dark(useMaterial3: true),
        colors: AppColors.light,
        textStyles: AppTextStyles.general,
        shadows: AppShadows.general,
      );
}
