abstract class ISettingsStorage {
  Future<void> saveSystemIp(String ip);
  Future<String?> readSystemIp();
  Future<void> clearSystemIp();
  Future<bool> readAcceptFirst(); // No '?' after bool
  Future<void> saveAcceptFirst(bool value);
  Future<void> savePrinterVid(String vid);
  Future<String?> readPrinterVid();
  Future<void> savePrinterPid(String pid);
  Future<String?> readPrinterPid();
}
