import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/features/scan/presentation/controller/scan_controller.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:ndef/ndef.dart' as ndef;

class BindCard extends ConsumerStatefulWidget {
  const BindCard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BindCardState();
}

class _BindCardState extends ConsumerState<BindCard> {
  final _csprng = Random.secure();

  @override
  void initState() {
    super.initState();
    _startNfcScan();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(scanControllerProvider);
    // final ctrl = ref.read(scanControllerProvider.notifier);

    // _listeners(context, ref);

    return Scaffold(
      appBar: AppBar(title: const Text('Scan Card')),
      body: Column(
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

                const SizedBox(width: 12),
                const Icon(Icons.nfc, size: 150),
                const SizedBox(height: 36),
                Text("Please scan the card to finish the operation"),
              ],
            ),
          ),
          state.isScanning ? const CircularProgressIndicator() : Container(),
        ],
      ),
    );
  }

  Future<void> _startNfcScan() async {
    var tag = await FlutterNfcKit.poll(timeout: Duration(seconds: 10));
    if (tag.ndefWritable == true) {
      final vcid = _generateVcid(); // From earlier helper
      final payload = utf8.encode(vcid); // VCID as bytes

      final record = ndef.MimeRecord(
        decodedType: 'application/vnd.walaa.vcid',
        payload: Uint8List.fromList(payload),
      );

      await FlutterNfcKit.writeNDEFRecords([record]);
      print('VCID written: $vcid');
    } else {
      print('NFC tag is not writable.');
    }

    await FlutterNfcKit.finish(); // End session
  }

  /// Returns a 128-bit (16-byte) random VCID encoded as Base64URL without padding.
  /// Example: "3r9-s1Oiv1mQe0n4z1gKxQ" (22 chars, [A-Za-z0-9-_])
  String _generateVcid({int bytes = 16}) {
    final buf = Uint8List(bytes);
    for (var i = 0; i < buf.length; i++) {
      buf[i] = _csprng.nextInt(256);
      int x = 10;
    }
    // Base64URL, strip '=' padding
    return base64UrlEncode(buf).replaceAll('=', '');
  }
}
