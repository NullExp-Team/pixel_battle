// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_image_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fieldImageServiceHash() => r'1502ca81a3fdcd6ecf24351d5ad54e93fce52a1b';

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
