import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/core/data/auth/repository/auth_repository.dart';
import 'package:walaa_pos/core/data/auth/source/local/token_storage.dart';
import 'package:walaa_pos/core/provider/device_info_provider.dart';
import '/core/provider/auth_state_provider.dart';
import '../../../core/data/auth/repository/iauth_repository.dart';
import '../../../core/data/auth/source/local/itoken_storage.dart';

final loginUseCaseProvider = Provider.autoDispose<LoginUseCase>((ref) {
  final repo = ref.watch(authRepositoryProvider);
  final storage = ref.watch(tokenStorageProvider);
  final auth = ref.read(authStateProvider.notifier);
  final deviceInfo = ref.read(deviceInfoServiceProvider);

  return LoginUseCase(repo, storage, auth, deviceInfo);
});

class LoginUseCase {
  final IAuthRepository _repo;
  final ITokenStorage _storage;
  final AuthState _auth;
  final DeviceInfoService _deviceInfo;

  LoginUseCase(this._repo, this._storage, this._auth, this._deviceInfo);

  /// Executes the login flow. Throws `Failure` on error.
  Future<void> execute(String username, String password) async {
    final deviceIdNotUsedYet = await _deviceInfo.getDeviceId();

    print(deviceIdNotUsedYet);
    final deviceId = "POS-1-921";
    // 1. remote call – may throw Failure.network etc.
    final tokens = await _repo.login(username, password, deviceId);

    // 2. persist
    await _storage.storeToken(tokens.access, tokens.refresh);

    // 3. flip global flag (single writer)
    _auth.setAuthState(true);
  }
}
