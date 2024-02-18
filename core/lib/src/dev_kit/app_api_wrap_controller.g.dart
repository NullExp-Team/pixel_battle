// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api

part of 'app_api_wrap_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appApiWrapControllerHash() =>
    r'b6a0b1da15b7bcf68b05dd07bb765b269bc8636c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [appApiWrapController].
@ProviderFor(appApiWrapController)
const appApiWrapControllerProvider = AppApiWrapControllerFamily();

/// See also [appApiWrapController].
class AppApiWrapControllerFamily extends Family<ApiWrapController<Object>> {
  /// See also [appApiWrapController].
  const AppApiWrapControllerFamily();

  /// See also [appApiWrapController].
  AppApiWrapControllerProvider call(
    String key,
  ) {
    return AppApiWrapControllerProvider(
      key,
    );
  }

  @override
  AppApiWrapControllerProvider getProviderOverride(
    covariant AppApiWrapControllerProvider provider,
  ) {
    return call(
      provider.key,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'appApiWrapControllerProvider';
}

/// See also [appApiWrapController].
class AppApiWrapControllerProvider extends Provider<ApiWrapController<Object>> {
  /// See also [appApiWrapController].
  AppApiWrapControllerProvider(
    String key,
  ) : this._internal(
          (ref) => appApiWrapController(
            ref as AppApiWrapControllerRef,
            key,
          ),
          from: appApiWrapControllerProvider,
          name: r'appApiWrapControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$appApiWrapControllerHash,
          dependencies: AppApiWrapControllerFamily._dependencies,
          allTransitiveDependencies:
              AppApiWrapControllerFamily._allTransitiveDependencies,
          key: key,
        );

  AppApiWrapControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
  }) : super.internal();

  final String key;

  @override
  Override overrideWith(
    ApiWrapController<Object> Function(AppApiWrapControllerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AppApiWrapControllerProvider._internal(
        (ref) => create(ref as AppApiWrapControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
      ),
    );
  }

  @override
  ProviderElement<ApiWrapController<Object>> createElement() {
    return _AppApiWrapControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AppApiWrapControllerProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AppApiWrapControllerRef on ProviderRef<ApiWrapController<Object>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _AppApiWrapControllerProviderElement
    extends ProviderElement<ApiWrapController<Object>>
    with AppApiWrapControllerRef {
  _AppApiWrapControllerProviderElement(super.provider);

  @override
  String get key => (origin as AppApiWrapControllerProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
