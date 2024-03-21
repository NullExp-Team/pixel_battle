import 'package:core/core.dart';

import 'position.dart';

part 'selection_update_data.freezed.dart';
part 'selection_update_data.g.dart';

@freezed
class SelectionUpdateData with _$SelectionUpdateData {
  factory SelectionUpdateData({
    required Position? position,
    required String nickname,
  }) = _SelectionUpdateData;

  factory SelectionUpdateData.fromJson(Map<String, dynamic> json) =>
      _$SelectionUpdateDataFromJson(json);
}
