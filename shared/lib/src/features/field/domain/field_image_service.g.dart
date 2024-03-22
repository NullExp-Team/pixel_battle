// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_image_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fieldImageServiceHash() => r'5b99c91b4d3e693d2eec0b0ccc11f68ab043f5c2';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
