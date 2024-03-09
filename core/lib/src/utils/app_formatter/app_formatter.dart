import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../core.dart';

/// Предоставляет различные методы для форматирования дат, времени и т.д. в определенном формате.
class AppFormatter {
  String get lang => LocaleSettings.currentLocale.languageCode;

  final _timeDurationFormat = TimeDurationFormat(
    daysLabel: 'д',
    hoursLabel: 'ч',
    minutesLabel: 'мин',
    secondsLabel: 'сек',
    millisecondsLabel: 'мс',
  );

  MaskTextInputFormatter phoneFormatter({
    String? initialText,
    int? phoneCountryCode,
  }) =>
      MaskTextInputFormatter(
        mask: '+${phoneCountryCode ?? '#'} (###) ###-##-##',
        filter: {
          '#': RegExp('[0-9]'),
        },
        initialText: initialText,
      );

  TextInputFormatter endFormatter(String endText) =>
      TextInputFormatter.withFunction((oldValue, newValue) {
        if (oldValue.text.isEmpty && newValue.text.isNotEmpty) {
          return newValue.copyWith(
            text: '${newValue.text}$endText',
          );
        } else if (newValue.text.length == 1) {
          return newValue.copyWith(
            text: '',
            selection: newValue.selection.copyWith(
              baseOffset: 0,
              extentOffset: 0,
            ),
          );
        } else if (newValue.text.lastIndexOf(endText) == -1) {
          return newValue.copyWith(
            text: '${newValue.text.substring(0, newValue.text.length - 1)}₽',
            selection: newValue.selection.copyWith(
              baseOffset: newValue.selection.baseOffset - 1,
              extentOffset: newValue.selection.extentOffset - 1,
            ),
          );
        } else if (newValue.text.lastIndexOf(endText) !=
            newValue.text.length - 1) {
          final newText = '${newValue.text.replaceAll(endText, '')}$endText';
          return newValue.copyWith(
            text: newText,
            selection: newValue.selection.copyWith(
              baseOffset: newText.length - 1,
              extentOffset: newText.length - 1,
            ),
          );
        }
        return newValue;
      });

  /// Формат длительности, например - "1ч 30м".
  String timeDuration(
    Duration duration, {
    bool useLabels = true,
    bool? alwaysShowHours,
    bool? alwaysShowMinutes,
    bool? showSeconds,
  }) =>
      _timeDurationFormat.format(
        duration,
        useLabels: useLabels,
        usePadLeft: !useLabels,
        separator: useLabels ? ' ' : ':',
        alwaysShowHours: alwaysShowHours,
        alwaysShowMinutes: alwaysShowMinutes,
        showSeconds: showSeconds,
      );

  String countdown(
    Duration duration, {
    bool alwaysShowHours = false,
    bool alwaysShowMinutes = true,
    bool showSeconds = true,
  }) =>
      _timeDurationFormat.format(
        duration,
        useLabels: false,
        usePadLeft: true,
        separator: ':',
        alwaysShowHours: alwaysShowHours,
        alwaysShowMinutes: alwaysShowMinutes,
        showSeconds: showSeconds,
      );

  String strDateDifference(String dateTime) {
    final duration =
        DateTime.parse(dateTime).toLocal().difference(DateTime.now());
    return formatter.timeDuration(
      duration,
      showSeconds: duration.inHours < 1,
    );
  }

  String weekday(int weekday, {String pattern = 'EE'}) {
    final date = DateTime(0);
    final weekDayDate = date.addDays(-date.weekday + weekday);
    final weekDayStr =
        DateFormat(pattern, lang).format(weekDayDate).capitalize();
    return weekDayStr;
  }
}
