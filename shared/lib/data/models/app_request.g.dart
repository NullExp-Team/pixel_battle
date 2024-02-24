// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthAppRequestImpl _$$AuthAppRequestImplFromJson(Map<String, dynamic> json) =>
    _$AuthAppRequestImpl(
      nickname: json['nickname'] as String,
      userId: json['user_id'] as int?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AuthAppRequestImplToJson(
        _$AuthAppRequestImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'user_id': instance.userId,
      'type': instance.$type,
    };

_$UpdatePixelAppRequestImpl _$$UpdatePixelAppRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePixelAppRequestImpl(
      UpdatePixel.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UpdatePixelAppRequestImplToJson(
        _$UpdatePixelAppRequestImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$GetFieldStateAppRequestImpl _$$GetFieldStateAppRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetFieldStateAppRequestImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GetFieldStateAppRequestImplToJson(
        _$GetFieldStateAppRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$DisconnectAppRequestImpl _$$DisconnectAppRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DisconnectAppRequestImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DisconnectAppRequestImplToJson(
        _$DisconnectAppRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };
