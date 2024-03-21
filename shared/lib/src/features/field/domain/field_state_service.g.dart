// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_state_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fieldStateServiceHash() => r'ea537d2aa9bd885b6307b451247edb064b0dc7dd';

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
