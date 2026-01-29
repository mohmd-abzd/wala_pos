import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/core/data/auth/source/local/iprofile_storage.dart';
import 'package:wala_pos/core/data/auth/source/local/profile_storage.dart';
import 'package:wala_pos/core/services/network/network_service.dart';
import 'package:wala_pos/core/services/token/itoken_service.dart';
import 'package:wala_pos/core/services/token/token_service.dart';
import '/core/provider/auth_state_provider.dart';

final logoutUseCaseProvider = Provider.autoDispose<LogoutUseCase>((ref) {
  final dio = ref.watch(networkServiceProvider);
  final tokenService = ref.watch(tokenServiceProvider(dio));
  final auth = ref.read(authStateProvider.notifier);
  final profileStorage = ref.read(profileStorageProvider);

  return LogoutUseCase(tokenService, profileStorage, auth);
});

class LogoutUseCase {
  final ITokenService _tokenService;
  final IProfileStorage _profileStorage;
  final AuthState _auth;

  LogoutUseCase(this._tokenService, this._profileStorage, this._auth);

  /// Executes the login flow. Throws `Failure` on error.
  Future<void> execute() async {
    await _tokenService.clearToken();
    await _profileStorage.clearProfile();
    _auth.setAuthState(false);
  }
}
