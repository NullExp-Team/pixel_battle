// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannedAppResponseImpl _$$BannedAppResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BannedAppResponseImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BannedAppResponseImplToJson(
        _$BannedAppResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$ErrorAppResponseImpl _$$ErrorAppResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorAppResponseImpl(
      json['message'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ErrorAppResponseImplToJson(
        _$ErrorAppResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': instance.$type,
    };

_$UserIdAppResponseImpl _$$UserIdAppResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserIdAppResponseImpl(
      json['data'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UserIdAppResponseImplToJson(
        _$UserIdAppResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$FieldStateAppResponseImpl _$$FieldStateAppResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FieldStateAppResponseImpl(
      (json['data'] as List<dynamic>)
          .map((e) => FieldPixel.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FieldStateAppResponseImplToJson(
        _$FieldStateAppResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$OnlineCountAppResponseImpl _$$OnlineCountAppResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OnlineCountAppResponseImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OnlineCountAppResponseImplToJson(
        _$OnlineCountAppResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };
