import 'package:core/core.dart';
import 'package:shared/shared.dart';

part 'login_contoller.freezed.dart';
part 'login_contoller.g.dart';

@freezed
class LoginContollerState with _$LoginContollerState {
  factory LoginContollerState({
    required String nickname,
  }) = _LoginContollerState;
}

@Riverpod()
class LoginContoller extends _$LoginContoller with ControllerMixin {
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
    final userId = prefs.getString('userId');

    if (userId == null) {
      await apiWrap(
        () => api.request<BackendSuccessResponse>(
          LoginRequest(LoginData(nickname: nickname)),
        ),
      );
    } else {
      await apiWrap(
        () => api.request<UserIdResponse>(
          LoginRequest(
            LoginData(
              nickname: nickname,
              userId: userId,
            ),
          ),
        ),
        onSuccess: (res) async {
          await prefs.setString('nickname', nickname);
          await prefs.setString('userId', res.data);
        },
      );
    }
  }
}
