// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserServiceStateImpl _$$UserServiceStateImplFromJson(
        Map<String, dynamic> json) =>
    _$UserServiceStateImpl(
      nickname: json['nickname'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$UserServiceStateImplToJson(
        _$UserServiceStateImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'userId': instance.userId,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userServiceHash() => r'cc68318a83617f8e152ad06c911b94e5276f1dc4';

/// See also [UserService].
@ProviderFor(UserService)
final userServiceProvider =
    NotifierProvider<UserService, UserServiceState?>.internal(
  UserService.new,
  name: r'userServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserService = Notifier<UserServiceState?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
