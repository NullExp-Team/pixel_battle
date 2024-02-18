enum FlavorType {
  develop,
  stage,
  prod;

  static FlavorType parse(String str) => FlavorType.values.firstWhere(
        (e) => e.name == str,
        orElse: () => throw ArgumentError('Unknown flavor type'),
      );
}
