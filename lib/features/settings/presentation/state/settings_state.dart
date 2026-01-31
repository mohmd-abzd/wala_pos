import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  factory SettingsState({
    @Default('') String systemIp,
    @Default(true) bool loading,
    @Default(false) bool acceptFirstInvoice,
  }) = _SettingsState;
}
