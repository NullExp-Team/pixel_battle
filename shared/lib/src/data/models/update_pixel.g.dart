// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_pixel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePixelImpl _$$UpdatePixelImplFromJson(Map<String, dynamic> json) => _$UpdatePixelImpl(
      x: json['x'] as int,
      y: json['y'] as int,
      color: json['color'] as String,
      actionTime: DateTime.parse(json['action_time'] as String),
    );

Map<String, dynamic> _$$UpdatePixelImplToJson(_$UpdatePixelImpl instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'color': instance.color,
      'action_time': instance.actionTime.toIso8601String(),
    };
