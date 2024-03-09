// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

_$UpdatePixelRequestImpl _$$UpdatePixelRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePixelRequestImpl(
      UpdatePixelData.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UpdatePixelRequestImplToJson(
        _$UpdatePixelRequestImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$UpdatePixelAdminRequestImpl _$$UpdatePixelAdminRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePixelAdminRequestImpl(
      UpdatePixelData.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UpdatePixelAdminRequestImplToJson(
        _$UpdatePixelAdminRequestImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$PixelInfoAdminRequestImpl _$$PixelInfoAdminRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PixelInfoAdminRequestImpl(
      PixelInfoAdminData.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PixelInfoAdminRequestImplToJson(
        _$PixelInfoAdminRequestImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$BanUserAdminRequestImpl _$$BanUserAdminRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BanUserAdminRequestImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BanUserAdminRequestImplToJson(
        _$BanUserAdminRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$ResetGameAdminRequestImpl _$$ResetGameAdminRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetGameAdminRequestImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ResetGameAdminRequestImplToJson(
        _$ResetGameAdminRequestImpl instance) =>
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
