// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannedResponseImpl _$$BannedResponseImplFromJson(Map<String, dynamic> json) =>
    _$BannedResponseImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BannedResponseImplToJson(
        _$BannedResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$BackendErrorResponseImpl _$$BackendErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BackendErrorResponseImpl(
      json['message'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BackendErrorResponseImplToJson(
        _$BackendErrorResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': instance.$type,
    };

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      json['data'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
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

_$OnlineCountResponseImpl _$$OnlineCountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OnlineCountResponseImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OnlineCountResponseImplToJson(
        _$OnlineCountResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };
