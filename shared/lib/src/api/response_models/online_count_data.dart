import 'package:core/core.dart';

part 'online_count_data.freezed.dart';
part 'online_count_data.g.dart';

@freezed
class OnlineCountData with _$OnlineCountData {
  factory OnlineCountData({
    required int online,
  }) = _OnlineCountData;

  factory OnlineCountData.fromJson(Map<String, dynamic> json) =>
      _$OnlineCountDataFromJson(json);
}
