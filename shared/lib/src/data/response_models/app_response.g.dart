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

_$UserIdResponseImpl _$$UserIdResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserIdResponseImpl(
      json['data'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UserIdResponseImplToJson(
        _$UserIdResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$FieldStateResponseImpl _$$FieldStateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FieldStateResponseImpl(
      width: json['width'] as int,
      height: json['height'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => FieldPixel.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FieldStateResponseImplToJson(
        _$FieldStateResponseImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'data': instance.data,
      'type': instance.$type,
    };

_$PixelUpdateResponseImpl _$$PixelUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PixelUpdateResponseImpl(
      FieldPixel.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PixelUpdateResponseImplToJson(
        _$PixelUpdateResponseImpl instance) =>
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

_$NoResponseImpl _$$NoResponseImplFromJson(Map<String, dynamic> json) =>
    _$NoResponseImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$NoResponseImplToJson(_$NoResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$UnknownResponseImpl _$$UnknownResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UnknownResponseImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UnknownResponseImplToJson(
        _$UnknownResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };
