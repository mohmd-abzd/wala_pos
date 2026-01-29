import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

import 'package:wala_pos/core/route/route_name.dart';
import 'package:wala_pos/features/kiosk/scan/presentation/controller/scan_controller.dart';
import 'barcode_scanner_screen.dart'; // Import the helper screen

class ScanScreen extends ConsumerStatefulWidget {
  const ScanScreen({super.key});

  @override
  ConsumerState<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends ConsumerState<ScanScreen> {
  StreamSubscription? _qrSub;
  late final ProviderSubscription<String?> _errorSub;
  late final StreamSubscription<bool> _keyboardSubscription;

  bool _navigating = false; // Navigation Guard

  @override
  void initState() {
    super.initState();

    // Listen to controller errors
    _errorSub = ref.listenManual(
      scanControllerProvider.select((s) => s.error),
      (_, error) {
        if (error != null) _showError(error);
      },
    );
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

  /// Unified Navigation Logic
  Future<void> _goToCustomer(String vcid) async {
    if (_navigating || !mounted) return;

    _navigating = true;
    try {
      // Use GoRouter to push the customer detail page
      context.pushNamed(customerRoute, pathParameters: {'vcid': vcid});

      // Debounce to prevent multiple scans causing multiple pushes
      await Future<void>.delayed(const Duration(milliseconds: 600));
    } catch (e) {
      _showError("Navigation Error: $e");
    } finally {
      _navigating = false;
    }
  }

  /// Launch the Camera Scanner Screen
  Future<void> _startCameraScan() async {
    try {
      // Push the camera UI and wait for a result
      final String? result = await Navigator.push<String>(
        context,
        MaterialPageRoute(builder: (context) => const BarcodeScannerScreen()),
      );

      final vcid = result?.trim();
      if (vcid == null || vcid.isEmpty) return;

      if (!mounted) return;

      // Pass result to unified navigation logic
      await _goToCustomer(vcid);
    } catch (e) {
      _showError("Camera Initialization Failed: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(scanControllerProvider);

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 24),

          Icon(
            Icons.qr_code,
            size: 300,
            color: Theme.of(context).colorScheme.primary,
          ),

          const SizedBox(height: 16),

          Text('لتسجيل الدخول', style: Theme.of(context).textTheme.titleMedium),

          const SizedBox(height: 4),

          Text(
            'الرجاء توجيه الكاميرا إلى رمز QR الخاص بك',
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
          ),

          const SizedBox(height: 32),

          SizedBox(
            width: 280, // 👈 control width here

            child: ElevatedButton(
              onPressed: state.isScanning ? null : _startCameraScan,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 64),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(width: 12),
                  Icon(Icons.camera_alt, size: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
