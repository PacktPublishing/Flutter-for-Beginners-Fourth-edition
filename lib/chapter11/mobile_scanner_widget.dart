import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class MobileScannerWidget extends StatefulWidget {
  const MobileScannerWidget({super.key});

  @override
  State<MobileScannerWidget> createState() => _MobileScannerWidgetState();
}

class _MobileScannerWidgetState extends State<MobileScannerWidget> {
  Barcode? _scanCode;
  late final MobileScannerController _mobileController;

  @override
  void initState() {
    super.initState();
    _mobileController = MobileScannerController(
      torchEnabled: true,
    );
    _mobileController.start();
    _mobileController.barcodes.listen(_onQRCodeRead);
  }

  @override
  // Widget tree in build method
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileScanner(
          controller: _mobileController,
        ),
        if (_scanCode != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Scan Result: ${_scanCode!.rawValue}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
      ],
    );
  }

  // Widget method
  void _onQRCodeRead(BarcodeCapture barcodeCapture) {
    if (mounted) {
      setState(() {
        // Record the scan data
        _scanCode = barcodeCapture.barcodes.firstOrNull;
      });
    }
  }

  // Widget dispose
  @override
  void dispose() {
    _mobileController.stop();
    _mobileController.dispose();
    super.dispose();
  }
}
