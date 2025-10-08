import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/common/util/run_guarded.dart';
import '../../domain/login_usecase.dart';
import '/features/login/presentation/state/login_state.dart';

final loginControllerProvider =
    AutoDisposeNotifierProvider<LoginController, LoginState>(
      LoginController.new,
    );

class LoginController extends AutoDisposeNotifier<LoginState> {
  @override
  LoginState build() {
    return LoginState();
  }

  /// Attempts to login the user with the username and password
  /// from the state.
  ///
  /// If the login is successful, the state is updated to
  /// [isLoading] = false and [isLoginSuccess] = true.
  ///
  /// If the login fails, the state is updated to
  /// [isLoading] = false and [error] = the error message.
  ///
  /// The login request is created from the [username] and [password]
  /// fields of the state.
  ///
  /// The login response is the result of calling
  /// [loginService.login] with the login request.
  Future<void> login() async {
    state = state.copyWith(isLoading: true, error: null);

    await runGuarded(
      () => ref
          .read(loginUseCaseProvider)
          .execute(state.loginForm['username'], state.loginForm['password']),
      (msg) => state = state.copyWith(isLoading: false, error: msg),
    );

    if (state.error == null) {
      state = state.copyWith(isLoading: false, isLoginSuccess: true);
    }
  }

  void setFormData(Map<String, dynamic> formData) {
    state = state.copyWith(loginForm: formData);
  }
}
