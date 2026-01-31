import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'isettings_storage.dart';

final settingsStorageProvider = Provider.autoDispose<ISettingsStorage>((ref) {
  return SettingsStorage();
});

class SettingsStorage implements ISettingsStorage {
  static const _systemIpKey = 'system_ip';
  static const _acceptFirstInvoiceKey =
      'accept_first_invoice'; // ✅ New key for the setting
  @override
  Future<void> clearSystemIp() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_systemIpKey);
  }

  @override
  Future<String?> readSystemIp() async {
    final prefs = await SharedPreferences.getInstance();
    // Use the null-coalescing operator (??) to provide the default
    return prefs.getString(_systemIpKey) ?? '10.0.2.2';
  }

  @override
  Future<void> saveSystemIp(String ip) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_systemIpKey, ip);
  }

  @override
  Future<bool> readAcceptFirst() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_acceptFirstInvoiceKey) ?? false; // Default to false
  }

  // ✅ New: Save the auto-accept preference
  @override
  Future<void> saveAcceptFirst(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_acceptFirstInvoiceKey, value);
  }
}
