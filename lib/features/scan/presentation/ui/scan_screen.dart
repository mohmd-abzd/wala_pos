import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';
import 'package:walaa_pos/core/route/route_name.dart';
import 'package:walaa_pos/features/scan/presentation/controller/scan_controller.dart';

class ScanScreen extends ConsumerStatefulWidget {
  const ScanScreen({super.key});

  @override
  ConsumerState<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends ConsumerState<ScanScreen> {
  // Platform channels
  static const MethodChannel _platform = MethodChannel(
    'samples.flutter.dev/printer',
  );
  static const EventChannel _infraredScanChannel = EventChannel(
    'samples.flutter.dev/infrared_scan',
  );

  // Keyboard visibility (optional: kept, but only logs)
  late final KeyboardVisibilityController _keyboardController;
  late final StreamSubscription<bool> _keyboardSubscription;

  // Subscriptions
  StreamSubscription? _qrSub;
  late final ProviderSubscription<String?> _errorSub;

  // Navigation guard
  bool _navigating = false;

  @override
  void initState() {
    super.initState();

    // Listen to controller errors ONCE (don't do this in build)
    _errorSub = ref.listenManual(
      scanControllerProvider.select((s) => s.error),
      (_, error) {
        if (error != null) _showError(error);
      },
    );

    // Start infrared QR listening
    _startInfraredQrListening();

    // Keyboard visibility (optional)
    _keyboardController = KeyboardVisibilityController();

    final isKeyboardVisible = _keyboardController.isVisible;
    debugPrint(
      "🔍 Keyboard visible when entering ScanScreen: $isKeyboardVisible",
    );

    _keyboardSubscription = _keyboardController.onChange.listen((visible) {
      debugPrint("⌨️ Keyboard visibility changed: $visible");
    });
  }

  @override
  void dispose() {
    _qrSub?.cancel();
    _keyboardSubscription.cancel();
    _errorSub.close();
    super.dispose();
  }

  void _showError(Object err) {
    if (!mounted) return;
    toastification.show(
      context: context,
      type: ToastificationType.error,
      title: const Text("خطأ"),
      description: Text(err.toString()),
      autoCloseDuration: const Duration(seconds: 4),
    );
  }

  void _startInfraredQrListening() {
    _qrSub?.cancel();

    _qrSub = _infraredScanChannel.receiveBroadcastStream().listen(
      (code) {
        final vcid = (code as String?)?.trim();
        if (vcid == null || vcid.isEmpty) return;

        if (!mounted) return;

        _goToCustomer(vcid);
      },
      onError: (err) {
        if (!mounted) return;
        _showError(err);
      },
    );
  }

  Future<void> _goToCustomer(String vcid) async {
    if (_navigating || !mounted) return;

    _navigating = true;
    try {
      context.pushNamed(customerRoute, pathParameters: {'vcid': vcid});
      // Optional: small debounce to avoid repeated pushes from rapid events
      await Future<void>.delayed(const Duration(milliseconds: 400));
    } finally {
      _navigating = false;
    }
  }

  Future<void> _startCameraScan() async {
    try {
      final result = await _platform.invokeMethod<String>('startCameraScan');
      final vcid = result?.trim();
      if (vcid == null || vcid.isEmpty) return;

      if (!mounted) return;

      await _goToCustomer(vcid);
    } catch (e) {
      _showError(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(scanControllerProvider);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.qr_code, size: 200),
          const SizedBox(height: 16),
          const Text(
            "وجّه العميل لوضع الكود نحو القارئ \n واضغط الزر الجانبي",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),

          const SizedBox(height: 32),

          // Camera scan
          ElevatedButton.icon(
            onPressed: state.isScanning ? null : _startCameraScan,
            icon: const Icon(Icons.camera_alt),
            label: const Text("استخدام الكاميرا لمسح QR"),
          ),

          const SizedBox(height: 12),

          // Emulator shortcut (optional)
          ElevatedButton.icon(
            onPressed: () => _goToCustomer("8S7WymqI0p6gHz-Sph59CQ"),
            icon: const Icon(Icons.developer_mode),
            label: const Text("Emulator's Scan"),
          ),

          const SizedBox(height: 24),

          if (state.isScanning) const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
