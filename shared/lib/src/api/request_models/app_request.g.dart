// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      LoginData.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$LoginAdminRequestImpl _$$LoginAdminRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginAdminRequestImpl(
      json['data'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LoginAdminRequestImplToJson(
        _$LoginAdminRequestImpl instance) =>
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

_$GetOnlineCountRequestImpl _$$GetOnlineCountRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOnlineCountRequestImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GetOnlineCountRequestImplToJson(
        _$GetOnlineCountRequestImpl instance) =>
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
      'data': instance.data.toJson(),
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
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$UpdateSelectionnRequestImpl _$$UpdateSelectionnRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSelectionnRequestImpl(
      UpdateSelectionData.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UpdateSelectionnRequestImplToJson(
        _$UpdateSelectionnRequestImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
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
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$BanUserAdminRequestImpl _$$BanUserAdminRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BanUserAdminRequestImpl(
      BanUserAdminData.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BanUserAdminRequestImplToJson(
        _$BanUserAdminRequestImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$ResetGameAdminRequestImpl _$$ResetGameAdminRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetGameAdminRequestImpl(
      (json['data'] as List<dynamic>).map((e) => e as int).toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ResetGameAdminRequestImplToJson(
        _$ResetGameAdminRequestImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
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
