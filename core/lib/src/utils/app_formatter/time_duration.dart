/// Предоставляет методы для форматирования длительности
/// в читаемое строковое представление.
class TimeDurationFormat {
  TimeDurationFormat({
    this.separator = ' ',
    this.useLabels = true,
    this.usePadLeft = false,
    this.alwaysShowDays = false,
    this.alwaysShowHours = false,
    this.alwaysShowMinutes = false,
    this.alwaysShowSeconds = false,
    this.alwaysShowMillisecons = false,
    this.showDays = true,
    this.showHours = true,
    this.showMinutes = true,
    this.showSeconds = false,
    this.showMillisecons = false,
    this.daysLabel = '',
    this.hoursLabel = '',
    this.minutesLabel = '',
    this.secondsLabel = '',
    this.millisecondsLabel = '',
  });

  final String separator;
  final bool useLabels;
  final bool usePadLeft;

  final bool alwaysShowDays;
  final bool alwaysShowHours;
  final bool alwaysShowMinutes;
  final bool alwaysShowSeconds;
  final bool alwaysShowMillisecons;

  final bool showDays;
  final bool showHours;
  final bool showMinutes;
  final bool showSeconds;
  final bool showMillisecons;

  final String daysLabel;
  final String hoursLabel;
  final String minutesLabel;
  final String secondsLabel;
  final String millisecondsLabel;

  String format(
    Duration duration, {
    String? separator,
    bool? useLabels,
    bool? usePadLeft,
    bool? alwaysShowDays,
    bool? alwaysShowHours,
    bool? alwaysShowMinutes,
    bool? alwaysShowSeconds,
    bool? alwaysShowMillisecons,
    bool? showDays,
    bool? showHours,
    bool? showMinutes,
    bool? showSeconds,
    bool? showMillisecons,
    String? daysLabel,
    String? hoursLabel,
    String? minutesLabel,
    String? secondsLabel,
    String? millisecondsLabel,
  }) {
    separator ??= this.separator;
    useLabels ??= this.useLabels;
    usePadLeft ??= this.usePadLeft;
    alwaysShowDays ??= this.alwaysShowDays;
    alwaysShowHours ??= this.alwaysShowHours;
    alwaysShowMinutes ??= this.alwaysShowMinutes;
    alwaysShowSeconds ??= this.alwaysShowSeconds;
    alwaysShowMillisecons ??= this.alwaysShowMillisecons;
    showDays ??= this.showDays;
    showHours ??= this.showHours;
    showMinutes ??= this.showMinutes;
    showSeconds ??= this.showSeconds;
    showMillisecons ??= this.showMillisecons;
    daysLabel ??= this.daysLabel;
    hoursLabel ??= this.hoursLabel;
    minutesLabel ??= this.minutesLabel;
    secondsLabel ??= this.secondsLabel;
    millisecondsLabel ??= this.millisecondsLabel;

    var dur = duration.isNegative ? Duration.zero : Duration(milliseconds: duration.inMilliseconds);

    final days = dur.inDays;
    dur -= Duration(days: days);
    final hours = dur.inHours;
    dur -= Duration(hours: hours);
    final minutes = dur.inMinutes;
    dur -= Duration(minutes: minutes);
    final seconds = dur.inSeconds;
    dur -= Duration(seconds: seconds);
    final milliseconds = dur.inMilliseconds;

    final buffer = StringBuffer();
    var previusShow = false;

    void write(
      int value, {
      required bool show,
      required bool alwaysShow,
      required String shortLabel,
    }) {
      if (show && (value > 0 || previusShow || alwaysShow)) {
        if (previusShow) {
          buffer.write(separator);
        } else {
          previusShow = true;
        }

        buffer.write(
          '${'$value'.padLeft(usePadLeft! ? 2 : 0, '0')}${useLabels! ? shortLabel : ''}',
        );
      }
    }

    write(
      days,
      show: showDays,
      alwaysShow: alwaysShowDays,
      shortLabel: daysLabel,
    );

    write(
      hours,
      show: showHours,
      alwaysShow: alwaysShowHours,
      shortLabel: hoursLabel,
    );

    write(
      minutes,
      show: showMinutes,
      alwaysShow: alwaysShowMinutes,
      shortLabel: minutesLabel,
    );

    write(
      seconds,
      show: showSeconds,
      alwaysShow: alwaysShowSeconds,
      shortLabel: secondsLabel,
    );

    write(
      milliseconds,
      show: showMillisecons,
      alwaysShow: alwaysShowMillisecons,
      shortLabel: millisecondsLabel,
    );

    return buffer.toString();
  }
}
