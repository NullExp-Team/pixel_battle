// ignore_for_file: unused_element

import 'package:flutter/material.dart';

import '../../core.dart';

/// Приватное расширение для получения данных из [BuildContext].
extension ConfigContextExtension on BuildContext {
  static final _formatter = AppFormatter();

  AppColors get colors => Theme.of(this).extension<AppColors>()!;
  AppTextStyles get textStyles => Theme.of(this).extension<AppTextStyles>()!;
  AppShadows get shadows => Theme.of(this).extension<AppShadows>()!;
  EdgeInsets get pagePadding => const EdgeInsets.symmetric(horizontal: 20);
  TranslationsRu get t => Translations.of(this);
  AppFormatter get formatter => _formatter;
}

BuildContext get _context => AppWrapper.currentContext;

/// Локализация, можно получить дотсуп из виджетов, бизнес-логики и моделей (например, для описания энамов).
TranslationsRu get t => _context.t;

/// Форматтер, можно получить дотсуп из виджетов и бизнес-логики.
AppFormatter get formatter => _context.formatter;

/// Получение [AppColors], [AppTextStyles] и [AppShadows] напрямую в виджетах,
/// минуя явное использование [BuildContext].
/// Использование контекста из корневого виджета обеспечивает согласованность всей темы и локализации ниже по дереву

extension ConfigStatelessWidgetExtension on StatelessWidget {
  AppColors get colors => _context.colors;
  AppTextStyles get textStyles => _context.textStyles;
  AppShadows get shadows => _context.shadows;
  EdgeInsets get pagePadding => _context.pagePadding;
}

extension ConfigStatefulWidgetExtension on StatefulWidget {
  AppColors get colors => _context.colors;
  AppTextStyles get textStyles => _context.textStyles;
  AppShadows get shadows => _context.shadows;
  EdgeInsets get pagePadding => _context.pagePadding;
}

extension ConfigStateExtension on State {
  AppColors get colors => _context.colors;
  AppTextStyles get textStyles => _context.textStyles;
  AppShadows get shadows => _context.shadows;
  EdgeInsets get pagePadding => _context.pagePadding;
}
