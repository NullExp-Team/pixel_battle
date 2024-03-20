import 'package:core/core.dart';

part 'pixel_info_admin_data.freezed.dart';
part 'pixel_info_admin_data.g.dart';

@freezed
class PixelInfoAdminData with _$PixelInfoAdminData {
  factory PixelInfoAdminData({
    required int x,
    required int y,
  }) = _PixelInfoAdminData;

  factory PixelInfoAdminData.fromJson(Map<String, dynamic> json) =>
      _$PixelInfoAdminDataFromJson(json);
}
