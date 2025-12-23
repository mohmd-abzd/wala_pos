import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/features/settings/settings_storage.dart';
import '../state/settings_state.dart';

final settingsControllerProvider =
    StateNotifierProvider.autoDispose<SettingsController, SettingsState>((ref) {
      return SettingsController(ref);
    });

class SettingsController extends StateNotifier<SettingsState> {
  final Ref ref;

  SettingsController(this.ref) : super(SettingsState()) {
    load();
  }

  Future<void> load() async {
    state = state.copyWith(loading: true);
    final storage = ref.read(settingsStorageProvider);
    final ip = await storage.readSystemIp();
    state = state.copyWith(systemIp: ip ?? '', loading: false);
  }

  Future<void> save(String ip) async {
    state = state.copyWith(loading: true);
    final storage = ref.read(settingsStorageProvider);
    await storage.saveSystemIp(ip);
    state = state.copyWith(systemIp: ip, loading: false);
  }

  Future<void> clear() async {
    state = state.copyWith(loading: true);
    final storage = ref.read(settingsStorageProvider);
    await storage.clearSystemIp();
    state = state.copyWith(systemIp: '', loading: false);
  }
}
