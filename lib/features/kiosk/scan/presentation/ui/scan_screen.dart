import 'dart:async';
import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pos_printer_platform_image_3/flutter_pos_printer_platform_image_3.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

import 'package:wala_pos/core/route/route_name.dart';
import 'package:wala_pos/features/kiosk/scan/presentation/controller/scan_controller.dart';
import 'package:wala_pos/features/settings/presentation/controller/settings_controller.dart';
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

  _printTestReceipt() async {
    // 1. Get the printer info from your settings state
    final settings = ref.read(settingsControllerProvider);

    if (settings.printerVendorId == null || settings.printerProductId == null) {
      _showError("يرجى إعداد الطابعة في الإعدادات أولاً");
      return;
    }

    // 2. Connect using the saved IDs
    final success = await PrinterManager.instance.connect(
      type: PrinterType.usb,
      model: UsbPrinterInput(
        vendorId: settings.printerVendorId,
        productId: settings.printerProductId,
      ),
    );

    if (!success) {
      _showError("تعذر الاتصال بالطابعة");
      return;
    }

    // 3. Generate Receipt
    final profile = await CapabilityProfile.load();
    final generator = Generator(PaperSize.mm80, profile);
    List<int> bytes = [];

    bytes += generator.text(
      "WALA POS",
      styles: const PosStyles(
        bold: true,
        align: PosAlign.center,
        height: PosTextSize.size2,
      ),
    );
    bytes += generator.text("Date: ${DateTime.now().toString().split('.')[0]}");
    bytes += generator.hr();
    bytes += generator.text(
      "Test Print Successful!",
      styles: const PosStyles(align: PosAlign.center),
    );
    bytes += generator.feed(3);
    bytes += generator.cut();

    // 4. Send to printer
    await PrinterManager.instance.send(type: PrinterType.usb, bytes: bytes);
  }

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
          const SizedBox(height: 24),

          // Emulator shortcut (optional)
          ElevatedButton.icon(
            onPressed: () => _printTestReceipt(),
            icon: const Icon(Icons.print),
            label: const Text("scan printer"),
          ),

          const SizedBox(height: 24),

          ElevatedButton.icon(
            onPressed: () => _goToCustomer("8S7WymqI0p6gHz-Sph59CQ"),
            icon: const Icon(Icons.developer_mode),
            label: const Text("Emulator's Scan"),
          ),
        ],
      ),
    );
  }
}
