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
      cooldown: json['cooldown'] as int,
      size: (json['size'] as List<dynamic>).map((e) => e as int).toList(),
      data: FieldStateData.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FieldStateResponseImplToJson(
        _$FieldStateResponseImpl instance) =>
    <String, dynamic>{
      'cooldown': instance.cooldown,
      'size': instance.size,
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$PixelUpdateResponseImpl _$$PixelUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PixelUpdateResponseImpl(
      PixelUpdateData.fromJson(json['data'] as Map<String, dynamic>),
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

_$SelectionUpdateResponseImpl _$$SelectionUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectionUpdateResponseImpl(
      SelectionUpdateData.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SelectionUpdateResponseImplToJson(
        _$SelectionUpdateResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$OnlineCountUpdateResponseImpl _$$OnlineCountUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OnlineCountUpdateResponseImpl(
      OnlineCountData.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OnlineCountUpdateResponseImplToJson(
        _$OnlineCountUpdateResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$CooldownUpdateResponseImpl _$$CooldownUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CooldownUpdateResponseImpl(
      json['data'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CooldownUpdateResponseImplToJson(
        _$CooldownUpdateResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$UsersInfoUpdateResponseImpl _$$UsersInfoUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersInfoUpdateResponseImpl(
      (json['data'] as List<dynamic>)
          .map((e) => UserInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UsersInfoUpdateResponseImplToJson(
        _$UsersInfoUpdateResponseImpl instance) =>
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
