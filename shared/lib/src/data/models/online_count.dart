import 'package:core/core.dart';

part 'online_count.freezed.dart';
part 'online_count.g.dart';

@freezed
class OnlineCount with _$OnlineCount {
  factory OnlineCount({
    required int online,
  }) = _OnlineCount;

  factory OnlineCount.fromJson(Map<String, dynamic> json) =>
      _$OnlineCountFromJson(json);
}
