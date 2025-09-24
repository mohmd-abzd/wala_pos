import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/common/exception/failure.dart';
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
    // update the state - isLoading = true and error = null
    state = state.copyWith(isLoading: true, error: null);

    final username = state.loginForm['username'];
    final password = state.loginForm['password'];

    try {
      await ref.read(loginUseCaseProvider).execute(username, password);

      // update the state - isLoading = false and isLoginSuccess = response
      state = state.copyWith(isLoading: false, isLoginSuccess: true);
    } on Failure catch (f) {
      state = state.copyWith(isLoading: false, error: f.message);
    } catch (e) {
      // unexpected error
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void setFormData(Map<String, dynamic> formData) {
    state = state.copyWith(loginForm: formData);
  }
}
