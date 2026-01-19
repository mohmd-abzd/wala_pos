import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeviceConfiguredNotifier extends StateNotifier<bool> {
  DeviceConfiguredNotifier() : super(false);
  void setConfigured(bool v) => state = v;
}

final deviceConfiguredProvider =
    StateNotifierProvider<DeviceConfiguredNotifier, bool>((ref) {
      return DeviceConfiguredNotifier();
    });
