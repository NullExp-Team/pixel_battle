// ignore_for_file: avoid_positional_boolean_parameters

import '../../../../core.dart';

part 'token_storage.freezed.dart';
part 'token_storage.g.dart';

@freezed
class TokenStorageState with _$TokenStorageState {
  factory TokenStorageState({
    required bool userPassedOnboarding,
    required bool userAuthorized,
    String? refreshToken,
    String? accessToken,
  }) = _TokenStorageState;

  factory TokenStorageState.fromJson(Map<String, dynamic> json) => _$TokenStorageStateFromJson(json);
}

/// Отвечает за управление и хранение токенов авторизации пользователя
@Riverpod(keepAlive: true)
class TokenStorageManager extends _$TokenStorageManager with PersistenceMixin<TokenStorageState> {
  @override
  TokenStorageState build() => persistentBuild(
        () => TokenStorageState(
          userPassedOnboarding: true,
          userAuthorized: false,
        ),
        fromJson: TokenStorageState.fromJson,
      );

  void updateUserPassedOnboarding(bool value) => state = state.copyWith(userPassedOnboarding: value);

  void updateToken({
    required String refreshToken,
    required String accessToken,
  }) {
    state = state.copyWith(
      refreshToken: refreshToken,
      accessToken: accessToken,
      userAuthorized: true,
    );
  }

  void clearToken() {
    state = state.copyWith(
      refreshToken: null,
      accessToken: null,
      userAuthorized: false,
    );
  }
}
