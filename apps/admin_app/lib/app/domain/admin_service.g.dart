// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminServiceStateImpl _$$AdminServiceStateImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminServiceStateImpl(
      token: json['token'] as String,
      isLogined: json['isLogined'] as bool,
    );

Map<String, dynamic> _$$AdminServiceStateImplToJson(
        _$AdminServiceStateImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'isLogined': instance.isLogined,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$adminServiceHash() => r'130d5400312022dfa35e9b8544bb1752fd6f123b';

/// See also [AdminService].
@ProviderFor(AdminService)
final adminServiceProvider =
    NotifierProvider<AdminService, AdminServiceState?>.internal(
  AdminService.new,
  name: r'adminServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$adminServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AdminService = Notifier<AdminServiceState?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
