import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/setting_service.dart';
import '/features/setting/presentation/state/setting_state.dart';

final settingControllerProvider =
    NotifierProvider<SettingController, SettingState>(SettingController.new);

class SettingController extends Notifier<SettingState> {
  @override
  SettingState build() {
    return SettingState();
  }

  Future<void> logout() async {
    // clear token - access token and refresh token
    await ref.read(settingServiceProvider).logout();
  }
}
