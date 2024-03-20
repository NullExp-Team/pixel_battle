import 'package:core/core.dart';

part 'ban_user_admin_data.freezed.dart';
part 'ban_user_admin_data.g.dart';

@freezed
class BanUserAdminData with _$BanUserAdminData {
  factory BanUserAdminData({
    @JsonKey(name: 'user_id') required String userId,
  }) = _BanUserAdminData;

  factory BanUserAdminData.fromJson(Map<String, dynamic> json) =>
      _$BanUserAdminDataFromJson(json);
}
