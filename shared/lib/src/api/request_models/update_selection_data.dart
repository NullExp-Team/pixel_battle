import 'package:core/core.dart';

import '../response_models/position.dart';

part 'update_selection_data.freezed.dart';
part 'update_selection_data.g.dart';

@freezed
class UpdateSelectionData with _$UpdateSelectionData {
  factory UpdateSelectionData({
    required Position position,
  }) = _UpdateSelectionData;

  factory UpdateSelectionData.fromJson(Map<String, dynamic> json) =>
      _$UpdateSelectionDataFromJson(json);
}
