import 'package:core/core.dart';

part 'login_data.freezed.dart';
part 'login_data.g.dart';

@freezed
class LoginData with _$LoginData {
  factory LoginData({
    required String nickname,
    @JsonKey(name: 'user_id') String? userId,
  }) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}
