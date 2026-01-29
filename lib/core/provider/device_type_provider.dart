import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/core/storage/device_info_storage.dart';

final deviceTypeProvider = FutureProvider<String?>((ref) async {
  return ref.read(deviceInfoStorageProvider).getDeviceType();
});

/// Synchronous, cached version (used by router)
final deviceTypeSyncProvider = Provider<String?>((ref) {
  final asyncValue = ref.watch(deviceTypeProvider);
  return asyncValue.maybeWhen(data: (v) => v, orElse: () => null);
});
