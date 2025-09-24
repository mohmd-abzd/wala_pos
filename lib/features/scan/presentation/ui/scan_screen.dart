import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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

  // 2. EventChannel to listen for codes:
  final _scanStream = EventChannel(
    'samples.flutter.dev/infrared_scan',
  ).receiveBroadcastStream();

  void _startQRListening() {
    _scanStream.listen(
      (code) {
        setState(() {
          _qrdetails = code;
          context.pushNamed(
            customerRoute,
            pathParameters: {'vcid': _qrdetails},
          );
        });
      },
      onError: (err) {
        setState(() {
          _qrdetails = err;
        });
      },
    );
  }

  Future<String?> _startCameraScan() async {
    try {
      final result = await _platform.invokeMethod<String>('startCameraScan');
      setState(() {
        if (result != null) {
          _qrdetails = result;
        }
      });
      return result;
    } catch (e) {
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    _startQRListening();
    _startNfcScan();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(scanControllerProvider);
    // final ctrl = ref.read(scanControllerProvider.notifier);

    // _listeners(context, ref);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (state.error != null) ...[
                Text(state.error!, style: const TextStyle(color: Colors.red)),
                const SizedBox(height: 12),
              ],
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.qr_code_scanner, size: 150),
                  const SizedBox(width: 12),
                  const Text('or'),
                  const SizedBox(width: 12),
                  const Icon(Icons.nfc, size: 150),
                ],
              ),

              const SizedBox(height: 36),
              Text("QR: $_qrdetails", style: TextStyle(fontSize: 24)),
              Text("NFC: $_nfcdetails", style: TextStyle(fontSize: 24)),
              const SizedBox(height: 12),
              const Text('or use the camera instead'),
              ElevatedButton(
                onPressed: _startCameraScan,
                child: const Text('Camera Scan'),
              ),
            ],
          ),
        ),
        state.isScanning ? const CircularProgressIndicator() : Container(),
      ],
    );
  }

  Future<void> _startNfcScan() async {
    var tag = await FlutterNfcKit.poll();
    setState(() {
      print("tag: ${jsonEncode(tag)}");
      _nfcdetails = tag.applicationData ?? "???";
    });

    final records = await FlutterNfcKit.readNDEFRecords();
    for (var r in records) {
      if (r is ndef.MimeRecord) {
        final vcid = utf8.decode(r.payload!);
        print('VCID from card: $vcid');
      }
    }
  }
}
