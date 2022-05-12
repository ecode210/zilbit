import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQrCode extends StatelessWidget {
  const ScanQrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Scan QR Code",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: MobileScanner(
        allowDuplicates: false,
        onDetect: (barcode, args) {
          final String code = barcode.rawValue!;
          debugPrint('Barcode found! $code');
        },
      ),
    );
  }
}
