// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fill_pixel_cooldown_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fillPixelCooldownHash() => r'0837ead77c4bcc057d494e6f0488f79484728ee1';

/// See also [fillPixelCooldown].
@ProviderFor(fillPixelCooldown)
final fillPixelCooldownProvider = StreamProvider<Duration>.internal(
  fillPixelCooldown,
  name: r'fillPixelCooldownProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fillPixelCooldownHash,
  dependencies: <ProviderOrFamily>[webSocketApiProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    webSocketApiProvider,
    ...?webSocketApiProvider.allTransitiveDependencies
  },
);

typedef FillPixelCooldownRef = StreamProviderRef<Duration>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
