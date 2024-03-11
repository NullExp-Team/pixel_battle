import 'package:core/core.dart';

import '../../../../router/app_router.dart';
import '../../domain/user_service.dart';

part 'login_contoller.freezed.dart';
part 'login_contoller.g.dart';

@freezed
class LoginContollerState with _$LoginContollerState {
  factory LoginContollerState({
    required String nickname,
  }) = _LoginContollerState;
}

@Riverpod()
class LoginContoller extends _$LoginContoller
    with ControllerMixin, ValidatorMixin, LoginContollerValdator {
  UserService get _userService => ref.read(userServiceProvider.notifier);

  @override
  LoginContollerState build() {
    return LoginContollerState(
      nickname: '',
    );
  }

  void updateNickname(String value) {
    state = state.copyWith(nickname: value);
  }

  Future<void> login() async {
    final nickname = state.nickname;

    await apiWrap(
      () => _userService.auth(nickname: nickname),
      onSuccess: (_) {
        router.replaceAll([const HomeRoute()]);
      },
    );
  }
}

mixin LoginContollerValdator implements _$LoginContoller, ValidatorMixin {
  String? validateNickname(String nickname) => switch (nickname) {
        _ when nickname.isEmpty => 'Обязательное поле',
        _ when nickname.length < 3 => 'Слишком короткий никнейм',
        _ when nickname.length > 63 => 'Слишком длинный никнейм',
        _ when !RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(nickname) =>
          'Никнейм может содержать только латинские буквы, цифры и символ подчеркивания',
        _ => null
      };

  late final nicknameValidator = createValidator(
    () => state.nickname,
    validateNickname,
  );
}
