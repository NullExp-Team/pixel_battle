enum RequestType {
  updatePixel('update_pixel'),
  getFieldState('get_field_state'),
  disconnect('disconnect'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const RequestType(this.json);

  factory RequestType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
