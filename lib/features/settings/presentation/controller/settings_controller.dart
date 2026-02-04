import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/settings_state.dart';
// Adjust this import to your actual storage provider path
import '../../../../core/features/settings/settings_storage.dart';

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
    final acceptFirst = await storage.readAcceptFirst();
    // Assuming you add these methods to your storage class:
    final vid = await storage.readPrinterVid();
    final pid = await storage.readPrinterPid();

    state = state.copyWith(
      systemIp: ip ?? '',
      acceptFirstInvoice: acceptFirst,
      printerVendorId: vid,
      printerProductId: pid,
      loading: false,
    );
  }

  Future<void> save(String ip) async {
    state = state.copyWith(loading: true);
    await ref.read(settingsStorageProvider).saveSystemIp(ip);
    state = state.copyWith(systemIp: ip, loading: false);
  }

  Future<void> updateAcceptFirstInvoice(bool value) async {
    await ref.read(settingsStorageProvider).saveAcceptFirst(value);
    state = state.copyWith(acceptFirstInvoice: value);
  }

  Future<void> updatePrinterSettings(String vid, String pid) async {
    final storage = ref.read(settingsStorageProvider);
    // Add these to your storage class to persist the selection
    await storage.savePrinterVid(vid);
    await storage.savePrinterPid(pid);

    state = state.copyWith(printerVendorId: vid, printerProductId: pid);
  }

  Future<void> clear() async {
    await ref.read(settingsStorageProvider).clearSystemIp();
    state = state.copyWith(systemIp: '', loading: false);
  }
}
