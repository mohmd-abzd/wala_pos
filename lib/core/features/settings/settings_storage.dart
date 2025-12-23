import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'isettings_storage.dart';

final settingsStorageProvider = Provider.autoDispose<ISettingsStorage>((ref) {
  return SettingsStorage();
});

class SettingsStorage implements ISettingsStorage {
  static const _systemIpKey = 'system_ip';

  @override
  Future<void> clearSystemIp() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_systemIpKey);
  }

  @override
  Future<String?> readSystemIp() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_systemIpKey);
  }

  @override
  Future<void> saveSystemIp(String ip) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_systemIpKey, ip);
  }
}
