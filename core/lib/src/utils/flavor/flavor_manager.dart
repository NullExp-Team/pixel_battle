// ignore_for_file: avoid_redundant_argument_values

import '../../../../core.dart';

final flavorManagerProvider =
    NotifierProvider<FlavorManager, FlavorType>(FlavorManager.new);

/// Управляет текущим flavor'ом приложения.
///
/// Класс [FlavorManager] хранит текущий [FlavorType] в качестве своего состояния.
/// Он предоставляет статический метод [initial] для установки flavor'а при запуске приложения
class FlavorManager extends Notifier<FlavorType> {
  @override
  FlavorType build() => flavor;

  static FlavorType? _config;

  static FlavorType get flavor {
    if (_config == null) throw Exception('Flavor is not initialized');
    return _config!;
  }

  static bool get isDev => flavor == FlavorType.develop;
  static bool get isStage => flavor == FlavorType.stage;
  static bool get isProd => flavor == FlavorType.prod;

  static void initial(FlavorType flavor) => _config ??= flavor;
}
