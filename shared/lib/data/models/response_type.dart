enum ResponseType {
  error('error'),
  banned('banned'),
  userId('user_id'),
  fieldState('field_state'),
  onlineCount('online_count'),
  disconnect('disconnect'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const ResponseType(this.json);

  factory ResponseType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
