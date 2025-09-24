// login_use_case_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/features/login/data/repository/login_repository.dart';
import 'package:walaa_pos/features/login/data/source/local/token_storage.dart';
import '/core/provider/auth_state_provider.dart';
import '/features/login/data/repository/ilogin_repository.dart';
import '/features/login/data/source/local/itoken_storage.dart';

final loginUseCaseProvider = Provider.autoDispose<LoginUseCase>((ref) {
  final repo = ref.watch(loginRepositoryProvider);
  final storage = ref.watch(tokenStorageProvider);
  final auth = ref.read(authStateProvider.notifier);
  return LoginUseCase(repo, storage, auth);
});

class LoginUseCase {
  final ILoginRepository _repo;
  final ITokenStorage _storage;
  final AuthState _auth;

  LoginUseCase(this._repo, this._storage, this._auth);

  /// Executes the login flow. Throws `Failure` on error.
  Future<void> execute(String username, String password) async {
    // 1. remote call – may throw Failure.network etc.
    final tokens = await _repo.login(username, password);

    // 2. persist
    await _storage.storeToken(tokens.access, tokens.refresh);

    // 3. flip global flag (single writer)
    _auth.setAuthState(true);
  }
}
