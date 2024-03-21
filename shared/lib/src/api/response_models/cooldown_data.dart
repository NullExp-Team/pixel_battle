import 'package:core/core.dart';

part 'cooldown_data.freezed.dart';
part 'cooldown_data.g.dart';

@freezed
class CooldownData with _$CooldownData {
  factory CooldownData({
    // In seconds
    required int cooldown,
  }) = _CooldownData;

  factory CooldownData.fromJson(Map<String, dynamic> json) =>
      _$CooldownDataFromJson(json);
}
