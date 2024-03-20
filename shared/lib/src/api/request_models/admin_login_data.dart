import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_login_data.freezed.dart';
part 'admin_login_data.g.dart';

@freezed
class AdminLoginData with _$AdminLoginData {
  factory AdminLoginData({
    required String username,
    required String password,
  }) = _AdminLoginData;

  factory AdminLoginData.fromJson(Map<String, dynamic> json) =>
      _$AdminLoginDataFromJson(json);
}
