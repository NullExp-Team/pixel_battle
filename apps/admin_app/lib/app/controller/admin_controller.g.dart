// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$adminControllerHash() => r'a7b9a960b1d6527031715c2b4dee24be5783d682';

/// See also [AdminController].
@ProviderFor(AdminController)
final adminControllerProvider =
    AutoDisposeNotifierProvider<AdminController, AdminControllerState>.internal(
  AdminController.new,
  name: r'adminControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$adminControllerHash,
  dependencies: <ProviderOrFamily>[webSocketApiProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    webSocketApiProvider,
    ...?webSocketApiProvider.allTransitiveDependencies
  },
);

typedef _$AdminController = AutoDisposeNotifier<AdminControllerState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
