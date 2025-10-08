import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deviceInfoServiceProvider = Provider<DeviceInfoService>((ref) {
  return DeviceInfoService();
});

class DeviceInfoService {
  final _deviceInfo = DeviceInfoPlugin();

  Future<String> getDeviceId() async {
    final androidInfo = await _deviceInfo.androidInfo;
    return androidInfo.id;
  }
}
