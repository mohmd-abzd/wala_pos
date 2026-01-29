import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'isecure_storage.dart';

// The Provider
final secureStorageProvider = Provider<ISecureStorage>((ref) {
  return SecureStorage(); // No longer needs flutterSecureStorageProvider
});

// The Implementation
final class SecureStorage implements ISecureStorage {
  SecureStorage();

  @override
  Future<void> delete(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  @override
  Future<String?> read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  @override
  Future<void> write(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }
}
