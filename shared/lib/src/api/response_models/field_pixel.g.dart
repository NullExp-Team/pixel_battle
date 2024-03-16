// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_pixel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FieldPixelImpl _$$FieldPixelImplFromJson(Map<String, dynamic> json) =>
    _$FieldPixelImpl(
      x: json['x'] as int,
      y: json['y'] as int,
      color: const ColorConverter().fromJson(json['color'] as String),
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$FieldPixelImplToJson(_$FieldPixelImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'color': const ColorConverter().toJson(instance.color),
      'nickname': instance.nickname,
    };
