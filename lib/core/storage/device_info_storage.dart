import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final deviceInfoStorageProvider = Provider<DeviceInfoStorage>((ref) {
  return DeviceInfoStorage();
});

class DeviceInfoStorage {
  // Prefix so you can add more fields later without collisions
  static const _prefix = 'deviceinfo.';
  static const _kSerialNumber = '${_prefix}serialNumber';
  static const _kDeviceType = '${_prefix}deviceType';

  Future<String?> getSerialNumber() async {
    final prefs = await SharedPreferences.getInstance();
    final v = prefs.getString(_kSerialNumber)?.trim();
    return (v == null || v.isEmpty) ? null : v;
  }

  Future<void> setSerialNumber(String serialNumber) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kSerialNumber, serialNumber.trim());
  }

  Future<void> clearSerialNumber() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_kSerialNumber);
  }

  Future<String?> getDeviceType() async {
    final prefs = await SharedPreferences.getInstance();
    final v = prefs.getString(_kDeviceType)?.trim();
    return (v == null || v.isEmpty) ? null : v;
  }

  Future<void> setDeviceType(String deviceType) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kDeviceType, deviceType.trim());
  }

  Future<void> clearDeviceType() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_kDeviceType);
  }

  /// Useful for logout/reset/setup-wizard restart
  Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_kSerialNumber);
    await prefs.remove(_kDeviceType);

    // Later: remove other keys here too (model, branchId, etc.)
  }
}
