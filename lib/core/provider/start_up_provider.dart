import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walaa_pos/core/storage/device_info_storage.dart';

import '/core/provider/auth_state_provider.dart';
import '/core/provider/device_config_provider.dart';
import '/core/services/secure_storage/secure_storage.dart';
import '/core/services/secure_storage/secure_storage_const.dart';

part 'start_up_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> startUp(Ref ref) async {
  // 1) Device check (SharedPreferences)
  final deviceStorage = ref.read(deviceInfoStorageProvider);
  final serial = await deviceStorage.getSerialNumber();
  ref.read(deviceConfiguredProvider.notifier).setConfigured(serial != null);

  // 2) Auth check (SecureStorage)
  final secureStorage = ref.read(secureStorageProvider);
  final accessToken = await secureStorage.read(accessTokenKey);
  if (accessToken != null && accessToken.trim().isNotEmpty) {
    ref.read(authStateProvider.notifier).setAuthState(true);
  }
}
