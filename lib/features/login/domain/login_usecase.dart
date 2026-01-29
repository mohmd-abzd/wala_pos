import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/core/data/auth/repository/auth_repository.dart';
import 'package:wala_pos/core/data/auth/source/local/iprofile_storage.dart';
import 'package:wala_pos/core/data/auth/source/local/profile_storage.dart';
import 'package:wala_pos/core/storage/device_info_storage.dart';
import 'package:wala_pos/core/services/network/network_service.dart';
import 'package:wala_pos/core/services/token/itoken_service.dart';
import 'package:wala_pos/core/services/token/token_service.dart';
import 'package:wala_pos/features/login/domain/session_token.dart';
import '/core/provider/auth_state_provider.dart';
import '../../../core/data/auth/repository/iauth_repository.dart';

final loginUseCaseProvider = Provider.autoDispose<LoginUseCase>((ref) {
  final repo = ref.watch(authRepositoryProvider);
  final dio = ref.watch(networkServiceProvider); // 👈 existing global Dio
  final tokenService = ref.watch(tokenServiceProvider(dio)); // 👈 pass Dio

  final auth = ref.read(authStateProvider.notifier);
  final deviceInfoStorage = ref.read(deviceInfoStorageProvider);
  final profileStorage = ref.watch(profileStorageProvider);

  return LoginUseCase(
    repo,
    tokenService,
    profileStorage,
    auth,
    deviceInfoStorage,
  );
});

class LoginUseCase {
  final IAuthRepository _repo;
  final ITokenService _tokenService;
  final IProfileStorage _profileStorage;

  final AuthState _auth;
  final DeviceInfoStorage _deviceInfo;

  LoginUseCase(
    this._repo,
    this._tokenService,
    this._profileStorage,
    this._auth,
    this._deviceInfo,
  );

  /// Executes the login flow. Throws `Failure` on error.
  Future<void> execute(String username, String password) async {
    // final serialNumber = "SN-11-126";
    final serialNumber = await _deviceInfo.getSerialNumber();
    if (serialNumber == null) {
      throw Exception('SERIAL_NUMBER_MISSING'); // handle -> go onboarding
    }

    // 1. remote call – may throw Failure.network etc.
    final response = await _repo.login(username, password, serialNumber);

    final tokens = SessionTokens(
      response.data.accessToken,
      response.data.refreshToken,
    );

    // 2. persist
    await _tokenService.storeToken(tokens.access, tokens.refresh);

    await _profileStorage.saveProfile(response.data.profile);

    // 3. flip global flag (single writer)
    _auth.setAuthState(true);
  }
}
