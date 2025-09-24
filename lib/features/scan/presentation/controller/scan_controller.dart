import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/features/scan/presentation/state/scan_state.dart';

final scanControllerProvider =
    AutoDisposeNotifierProvider<ScanController, ScanState>(ScanController.new);

class ScanController extends AutoDisposeNotifier<ScanState> {
  @override
  ScanState build() => ScanState();

  Future<void> scan() async {
    // reset before scanning
    // state = state.copyWith(isScanning: true, error: null, scannedId: null);

    // String id;
    // try {
    //   id = await ref.read(scanUseCaseProvider).execute();
    //   state = state.copyWith(isScanning: false, scannedId: id);
    // } catch (e) {
    //   state = state.copyWith(isScanning: false, error: e.toString());
    // }
  }

  /// Call this after navigation so the next scan will trigger again
  void clear() {
    state = state.copyWith(scannedId: null);
  }
}
