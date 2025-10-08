import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';
import 'package:walaa_pos/core/route/route_name.dart';
import 'package:walaa_pos/features/scan/presentation/controller/scan_controller.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:ndef/ndef.dart' as ndef;

class ScanScreen extends ConsumerStatefulWidget {
  const ScanScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ScanScreenState();
}

class _ScanScreenState extends ConsumerState<ScanScreen> {
  static const _platform = MethodChannel('samples.flutter.dev/printer');

  String _qrdetails = "None";
  String _nfcdetails = "None";

  // Infrared QR listener
  final _scanStream = const EventChannel(
    'samples.flutter.dev/infrared_scan',
  ).receiveBroadcastStream();

  void _startQRListening() {
    _scanStream.listen(
      (code) {
        setState(() => _qrdetails = code);
        context.pushNamed(customerRoute, pathParameters: {'vcid': _qrdetails});
      },
      onError: (err) {
        toastification.show(
          context: context,
          type: ToastificationType.error,
          title: const Text("خطأ"),
          description: Text(err),
          autoCloseDuration: const Duration(seconds: 4),
        );
        setState(() => _qrdetails = err);
      },
    );
  }

  Future<String?> _startCameraScan() async {
    try {
      final result = await _platform.invokeMethod<String>('startCameraScan');
      if (result != null) {
        setState(() => _qrdetails = result);
      }
      return result;
    } catch (e) {
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    _startQRListening(); // ✅ Only listen for QR (default mode)
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(scanControllerProvider);

    // Listen for errors
    ref.listen(scanControllerProvider.select((s) => s.error), (_, error) {
      if (error != null) {
        toastification.show(
          context: context,
          type: ToastificationType.error,
          title: const Text("خطأ"),
          description: Text(error),
          autoCloseDuration: const Duration(seconds: 4),
        );
      }
    });

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1. Big QR code placeholder
          const Icon(Icons.qr_code, size: 200),
          const SizedBox(height: 16),
          const Text(
            "وجّه العميل لوضع الكود نحو القارئ \n واضغط الزر الجانبي",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),

          const SizedBox(height: 32),

          // 2. Camera scan button
          ElevatedButton.icon(
            onPressed: _startCameraScan,
            icon: const Icon(Icons.camera_alt),
            label: const Text("استخدام الكاميرا لمسح QR"),
          ),

          const SizedBox(height: 12),

          // 3. NFC scan button (shows popup)
          ElevatedButton.icon(
            onPressed: () => _showNfcDialog(context),
            icon: const Icon(Icons.nfc),
            label: const Text("مسح بطاقة NFC"),
          ),

          const SizedBox(height: 24),
          if (state.isScanning) const CircularProgressIndicator(),
        ],
      ),
    );
  }

  Future<void> _showNfcDialog(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: false, // force user to finish/cancel
      builder: (ctx) {
        _startNfcScan(ctx);
        return AlertDialog(
          title: const Text("NFC Scan"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.nfc, size: 80, color: Colors.blue),
              SizedBox(height: 12),
              Text("ضع البطاقة بالقرب من الجهاز"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                FlutterNfcKit.finish(); // stop polling
                Navigator.of(ctx).pop();
              },
              child: const Text("إلغاء"),
            ),
          ],
        );
      },
    );
  }

  Future<void> _startNfcScan(BuildContext dialogContext) async {
    try {
      var tag = await FlutterNfcKit.poll(timeout: const Duration(seconds: 5));
      setState(() {
        _nfcdetails = tag.applicationData ?? "???";
      });

      final records = await FlutterNfcKit.readNDEFRecords();
      for (var r in records) {
        if (r is ndef.MimeRecord) {
          final vcid = utf8.decode(r.payload!);
          print('VCID from card: $vcid');
          Navigator.of(dialogContext).pop(); // close popup on success
          context.pushNamed(customerRoute, pathParameters: {'vcid': vcid});
        }
      }
    } on PlatformException catch (e) {
      if (e.code == '408') {
        // Timeout
        toastification.show(
          context: context,
          type: ToastificationType.error,
          title: const Text("مهلة انتهت"),
          description: const Text("لم يتم اكتشاف بطاقة، حاول مرة أخرى"),
        );
      } else {
        toastification.show(
          context: context,
          type: ToastificationType.error,
          title: const Text("خطأ NFC"),
          description: Text(e.message ?? "غير معروف"),
        );
      }
      Navigator.of(dialogContext).pop(); // close popup on error
    } finally {
      await FlutterNfcKit.finish();
    }
  }
}
