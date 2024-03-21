// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$onlineCountHash() => r'f583653ee0ddbfad1c1ad8d1d4af4cad5d92d430';

/// See also [_onlineCount].
@ProviderFor(_onlineCount)
final _onlineCountProvider = AutoDisposeStreamProvider<int>.internal(
  _onlineCount,
  name: r'_onlineCountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$onlineCountHash,
  dependencies: <ProviderOrFamily>[webSocketApiProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    webSocketApiProvider,
    ...?webSocketApiProvider.allTransitiveDependencies
  },
);

typedef _OnlineCountRef = AutoDisposeStreamProviderRef<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
