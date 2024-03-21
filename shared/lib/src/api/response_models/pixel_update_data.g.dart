// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixel_update_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PixelUpdateDataImpl _$$PixelUpdateDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PixelUpdateDataImpl(
      x: json['x'] as int,
      y: json['y'] as int,
      color: const ColorConverter().fromJson(json['color'] as String),
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$PixelUpdateDataImplToJson(
        _$PixelUpdateDataImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'color': const ColorConverter().toJson(instance.color),
      'nickname': instance.nickname,
    };
