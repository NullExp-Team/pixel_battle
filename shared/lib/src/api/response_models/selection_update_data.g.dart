// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selection_update_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectionUpdateDataImpl _$$SelectionUpdateDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectionUpdateDataImpl(
      position: Position.fromJson(json['position'] as Map<String, dynamic>),
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$SelectionUpdateDataImplToJson(
        _$SelectionUpdateDataImpl instance) =>
    <String, dynamic>{
      'position': instance.position.toJson(),
      'nickname': instance.nickname,
    };
