abstract class ISettingsStorage {
  Future<void> saveSystemIp(String ip);
  Future<String?> readSystemIp();
  Future<void> clearSystemIp();
}
