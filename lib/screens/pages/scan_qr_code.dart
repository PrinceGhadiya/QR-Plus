import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:qr_plus/screens/components/my_button.dart';

class ScanQrCode extends StatefulWidget {
  const ScanQrCode({super.key});

  @override
  State<ScanQrCode> createState() => _ScanQrCodeState();
}

class _ScanQrCodeState extends State<ScanQrCode> {
  String scannerRes = "Scan QR Code";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan Qr Code"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(scannerRes),
              const SizedBox(height: 4),
              const Divider(),
              const SizedBox(height: 4),
              MyButton(
                title: "Scan QR Code",
                onPressed: scanQRCode,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void scanQRCode() async {
    try {
      scannerRes = await FlutterBarcodeScanner.scanBarcode(
          "#000000", "Cancel", true, ScanMode.QR);
      setState(() {});
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
