// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_pixel_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePixelDataImpl _$$UpdatePixelDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePixelDataImpl(
      position: Position.fromJson(json['position'] as Map<String, dynamic>),
      color: const ColorConverter().fromJson(json['color'] as String),
    );

Map<String, dynamic> _$$UpdatePixelDataImplToJson(
        _$UpdatePixelDataImpl instance) =>
    <String, dynamic>{
      'position': instance.position.toJson(),
      'color': const ColorConverter().toJson(instance.color),
    };
