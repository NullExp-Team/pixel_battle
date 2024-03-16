// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_pixel_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePixelDataImpl _$$UpdatePixelDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePixelDataImpl(
      x: json['x'] as int,
      y: json['y'] as int,
      color: const ColorConverter().fromJson(json['color'] as String),
    );

Map<String, dynamic> _$$UpdatePixelDataImplToJson(
        _$UpdatePixelDataImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'color': const ColorConverter().toJson(instance.color),
    };
