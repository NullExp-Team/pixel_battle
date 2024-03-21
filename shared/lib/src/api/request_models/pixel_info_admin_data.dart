import 'package:core/core.dart';

import '../response_models/position.dart';

part 'pixel_info_admin_data.freezed.dart';
part 'pixel_info_admin_data.g.dart';

@freezed
class PixelInfoAdminData with _$PixelInfoAdminData {
  factory PixelInfoAdminData({
    required Position position,
  }) = _PixelInfoAdminData;

  factory PixelInfoAdminData.fromJson(Map<String, dynamic> json) =>
      _$PixelInfoAdminDataFromJson(json);
}
