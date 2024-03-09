// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthRequestImpl _$$AuthRequestImplFromJson(Map<String, dynamic> json) =>
    _$AuthRequestImpl(
      nickname: json['nickname'] as String,
      userId: json['user_id'] as int?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AuthRequestImplToJson(_$AuthRequestImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'user_id': instance.userId,
      'type': instance.$type,
    };

_$UpdatePixelRequestImpl _$$UpdatePixelRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePixelRequestImpl(
      UpdatePixel.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UpdatePixelRequestImplToJson(
        _$UpdatePixelRequestImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$GetFieldStateRequestImpl _$$GetFieldStateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetFieldStateRequestImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GetFieldStateRequestImplToJson(
        _$GetFieldStateRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$DisconnectRequestImpl _$$DisconnectRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DisconnectRequestImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DisconnectRequestImplToJson(
        _$DisconnectRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };
