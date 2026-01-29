import 'package:shared_preferences/shared_preferences.dart';
import 'package:wala_pos/core/services/secure_storage/isecure_storage.dart';

final class SharedPrefsStorage implements ISecureStorage {
  // No constructor needed here if using on-demand
  SharedPrefsStorage();

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
