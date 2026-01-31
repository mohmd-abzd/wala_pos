abstract class ISettingsStorage {
  Future<void> saveSystemIp(String ip);
  Future<String?> readSystemIp();
  Future<void> clearSystemIp();
  Future<bool> readAcceptFirst(); // No '?' after bool
  Future<void> saveAcceptFirst(bool value);
}
