// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_pixel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FieldPixelImpl _$$FieldPixelImplFromJson(Map<String, dynamic> json) =>
    _$FieldPixelImpl(
      position: Position.fromJson(json['position'] as Map<String, dynamic>),
      color: const ColorConverter().fromJson(json['color'] as String),
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$FieldPixelImplToJson(_$FieldPixelImpl instance) =>
    <String, dynamic>{
      'position': instance.position.toJson(),
      'color': const ColorConverter().toJson(instance.color),
      'nickname': instance.nickname,
    };
