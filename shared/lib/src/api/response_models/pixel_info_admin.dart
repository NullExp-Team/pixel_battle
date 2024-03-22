import 'package:core/core.dart';

part 'pixel_info_admin.freezed.dart';
part 'pixel_info_admin.g.dart';

@freezed
class PixelInfoAdmin with _$PixelInfoAdmin {
  factory PixelInfoAdmin({
    @JsonKey(name: 'user_id') required String? userId,
  }) = _PixelInfoAdmin;

  factory PixelInfoAdmin.fromJson(Map<String, dynamic> json) =>
      _$PixelInfoAdminFromJson(json);
}
