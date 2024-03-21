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

_$BackendSuccessResponseImpl _$$BackendSuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BackendSuccessResponseImpl(
      json['data'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BackendSuccessResponseImplToJson(
        _$BackendSuccessResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
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
      size: (json['size'] as List<dynamic>).map((e) => e as int).toList(),
      data: (json['data'] as List<dynamic>)
          .map((e) => FieldPixel.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FieldStateResponseImplToJson(
        _$FieldStateResponseImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'data': instance.data.map((e) => e.toJson()).toList(),
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
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$PixelInfoAdminResponseImpl _$$PixelInfoAdminResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PixelInfoAdminResponseImpl(
      PixelInfoAdmin.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PixelInfoAdminResponseImplToJson(
        _$PixelInfoAdminResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$OnlineCountResponseImpl _$$OnlineCountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OnlineCountResponseImpl(
      OnlineCountData.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OnlineCountResponseImplToJson(
        _$OnlineCountResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$UsersOnlineResponseImpl _$$UsersOnlineResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersOnlineResponseImpl(
      (json['data'] as List<dynamic>)
          .map((e) => UserInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UsersOnlineResponseImplToJson(
        _$UsersOnlineResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
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
