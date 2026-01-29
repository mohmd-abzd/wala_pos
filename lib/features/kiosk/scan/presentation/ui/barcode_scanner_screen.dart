import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeScannerScreen extends StatefulWidget {
  const BarcodeScannerScreen({super.key});

  @override
  State<BarcodeScannerScreen> createState() => _BarcodeScannerScreenState();
}

class _BarcodeScannerScreenState extends State<BarcodeScannerScreen> {
  // Use a controller to ensure we can stop the camera properly
  final MobileScannerController controller = MobileScannerController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool _isPopped = false;

  void _onDetect(BarcodeCapture capture) {
    final List<Barcode> barcodes = capture.barcodes;
    if (barcodes.isNotEmpty && !_isPopped) {
      _isPopped = true;
      final String? code = barcodes.first.rawValue;
      // Pop the result back to ScanScreen
      Navigator.of(context).pop(code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scan Customer QR')),
      body: Stack(
        children: [
          // 1. Camera preview (whatever scanner widget you use)
          MobileScanner(onDetect: _onDetect),

          // 2. Dark overlay with cut-out
          Positioned.fill(child: CustomPaint(painter: ScannerOverlayPainter())),

          // 3. Instruction text
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Column(
              children: const [
                Text(
                  'ضع رمز QR داخل الإطار',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'سيتم المسح تلقائياً',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScannerOverlayPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final overlayPath = Path()
      ..addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    // Focus box size
    final boxSize = size.width * 0.65;
    final left = (size.width - boxSize) / 2;
    final top = (size.height - boxSize) / 2;

    final scanRect = Rect.fromLTWH(left, top, boxSize, boxSize);

    // Add the hole to the path
    overlayPath.addRRect(
      RRect.fromRectAndRadius(scanRect, const Radius.circular(16)),
    );

    // This is the magic line: it creates the "donut hole" effect
    overlayPath.fillType = PathFillType.evenOdd;

    final paint = Paint()..color = Colors.black.withOpacity(0.6);
    canvas.drawPath(overlayPath, paint);

    // White border (Drawn separately)
    final borderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    canvas.drawRRect(
      RRect.fromRectAndRadius(scanRect, const Radius.circular(16)),
      borderPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
