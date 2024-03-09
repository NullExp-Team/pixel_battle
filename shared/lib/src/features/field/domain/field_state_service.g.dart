// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_state_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fieldImageServiceHash() => r'3bf2beed14b27b29f27aa964077efc705a952672';

/// See also [FieldImageService].
@ProviderFor(FieldImageService)
final fieldImageServiceProvider =
    AutoDisposeAsyncNotifierProvider<FieldImageService, ui.Image>.internal(
  FieldImageService.new,
  name: r'fieldImageServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fieldImageServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FieldImageService = AutoDisposeAsyncNotifier<ui.Image>;
String _$fieldStateServiceHash() => r'2aefe1b5c1a859bb432466aa82d325127c16242f';

/// See also [FieldStateService].
@ProviderFor(FieldStateService)
final fieldStateServiceProvider = AutoDisposeStreamNotifierProvider<
    FieldStateService, FieldStateMap>.internal(
  FieldStateService.new,
  name: r'fieldStateServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fieldStateServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FieldStateService = AutoDisposeStreamNotifier<FieldStateMap>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
