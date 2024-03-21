// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_state_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FieldStateDataImpl _$$FieldStateDataImplFromJson(Map<String, dynamic> json) =>
    _$FieldStateDataImpl(
      pixels: (json['pixels'] as List<dynamic>)
          .map((e) => FieldPixel.fromJson(e as Map<String, dynamic>))
          .toList(),
      selections: (json['selections'] as List<dynamic>)
          .map((e) => SelectionUpdateData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FieldStateDataImplToJson(
        _$FieldStateDataImpl instance) =>
    <String, dynamic>{
      'pixels': instance.pixels.map((e) => e.toJson()).toList(),
      'selections': instance.selections.map((e) => e.toJson()).toList(),
    };
