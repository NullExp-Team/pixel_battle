import 'package:freezed_annotation/freezed_annotation.dart';

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
