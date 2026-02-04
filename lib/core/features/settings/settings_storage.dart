import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'isettings_storage.dart';

final settingsStorageProvider = Provider<ISettingsStorage>((ref) {
  return SettingsStorage();
});

class SettingsStorage implements ISettingsStorage {
  static const _systemIpKey = 'system_ip';
  static const _acceptFirstInvoiceKey =
      'accept_first_invoice'; // ✅ New key for the setting
  static const _printerVidKey = 'printer_vid'; // ✅ New Key
  static const _printerPidKey = 'printer_pid'; // ✅ New Key
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

  @override
  Future<void> savePrinterVid(String vid) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_printerVidKey, vid);
  }

  @override
  Future<String?> readPrinterVid() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_printerVidKey);
  }

  @override
  Future<void> savePrinterPid(String pid) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_printerPidKey, pid);
  }

  @override
  Future<String?> readPrinterPid() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_printerPidKey);
  }
}
