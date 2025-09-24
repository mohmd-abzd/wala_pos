import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'isetting_service.dart';
import '/features/setting/data/repository/isetting_repository.dart';
import '/features/setting/data/repository/setting_repository.dart';
import '/core/provider/auth_state_provider.dart';

final settingServiceProvider = Provider<IsettingService>((ref) {
  final settingRepository = ref.watch(settingRepositoryProvider);
  final authstate = ref.read(authStateProvider.notifier);

  return SettingService(settingRepository, authstate);
});

final class SettingService implements IsettingService {
  final ISettingRepository _settingRepository;
  final AuthState _auth; // <‑‑ inject once

  SettingService(this._settingRepository, this._auth);

  @override
  Future<void> logout() async {
    await _settingRepository.clearToken();
    _auth.setAuthState(false);
  }
}
