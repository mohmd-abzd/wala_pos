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

    // ✅ Fetch BOTH values from storage
    final ip = await storage.readSystemIp();
    final acceptFirst = await storage.readAcceptFirst();

    state = state.copyWith(
      systemIp: ip ?? '',
      acceptFirstInvoice: acceptFirst, // ✅ Load the persisted boolean
      loading: false,
    );
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

  Future<void> updateAcceptFirstInvoice(bool value) async {
    state = state.copyWith(loading: true);
    final storage = ref.read(settingsStorageProvider);

    await storage.saveAcceptFirst(value);
    state = state.copyWith(loading: false, acceptFirstInvoice: value);
  }
}
