import 'package:core/core.dart';

import 'field_pixel.dart';
import 'selection_update_data.dart';

part 'field_state_data.freezed.dart';
part 'field_state_data.g.dart';

@freezed
class FieldStateData with _$FieldStateData {
  factory FieldStateData({
    required List<FieldPixel> pixels,
    required List<SelectionUpdateData> selections,
  }) = _FieldStateData;

  factory FieldStateData.fromJson(Map<String, dynamic> json) =>
      _$FieldStateDataFromJson(json);
}
