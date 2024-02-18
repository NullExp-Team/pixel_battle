// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api

part of 'token_storage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenStorageStateImpl _$$TokenStorageStateImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenStorageStateImpl(
      userPassedOnboarding: json['userPassedOnboarding'] as bool,
      userAuthorized: json['userAuthorized'] as bool,
      refreshToken: json['refreshToken'] as String?,
      accessToken: json['accessToken'] as String?,
    );

Map<String, dynamic> _$$TokenStorageStateImplToJson(
        _$TokenStorageStateImpl instance) =>
    <String, dynamic>{
      'userPassedOnboarding': instance.userPassedOnboarding,
      'userAuthorized': instance.userAuthorized,
      'refreshToken': instance.refreshToken,
      'accessToken': instance.accessToken,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tokenStorageManagerHash() =>
    r'ec73eba1b8b6c7799e7b23315e88a47a907f9eb0';

/// Отвечает за управление и хранение токенов авторизации пользователя
///
/// Copied from [TokenStorageManager].
@ProviderFor(TokenStorageManager)
final tokenStorageManagerProvider =
    NotifierProvider<TokenStorageManager, TokenStorageState>.internal(
  TokenStorageManager.new,
  name: r'tokenStorageManagerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tokenStorageManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TokenStorageManager = Notifier<TokenStorageState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
