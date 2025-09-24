import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan_state.freezed.dart';

@freezed
class ScanState with _$ScanState {
  factory ScanState({
    @Default(false) bool isScanning,
    String? scannedId,
    String? error,
  }) = _ScanState;
}
