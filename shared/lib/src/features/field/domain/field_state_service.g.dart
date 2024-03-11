// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_state_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fieldImageServiceHash() => r'3f33ca5d23cbdbb17a1773f6f5fd9941732117e9';

/// See also [FieldImageService].
@ProviderFor(FieldImageService)
final fieldImageServiceProvider =
    AutoDisposeAsyncNotifierProvider<FieldImageService, ui.Image>.internal(
  FieldImageService.new,
  name: r'fieldImageServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fieldImageServiceHash,
  dependencies: <ProviderOrFamily>[webSocketApiProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    webSocketApiProvider,
    ...?webSocketApiProvider.allTransitiveDependencies
  },
);

typedef _$FieldImageService = AutoDisposeAsyncNotifier<ui.Image>;
String _$fieldStateServiceHash() => r'36f2f420d8bd03056c91d211dcec023190e050ca';

/// See also [FieldStateService].
@ProviderFor(FieldStateService)
final fieldStateServiceProvider = AutoDisposeStreamNotifierProvider<
    FieldStateService, FieldStateMap>.internal(
  FieldStateService.new,
  name: r'fieldStateServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fieldStateServiceHash,
  dependencies: <ProviderOrFamily>[webSocketApiProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    webSocketApiProvider,
    ...?webSocketApiProvider.allTransitiveDependencies
  },
);

typedef _$FieldStateService = AutoDisposeStreamNotifier<FieldStateMap>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
