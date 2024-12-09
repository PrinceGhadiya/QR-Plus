import 'package:flutter/material.dart';
import 'package:qr_plus/screens/components/my_button.dart';
import 'package:qr_plus/screens/pages/generate_qr_code.dart';
import 'package:qr_plus/screens/pages/scan_qr_code.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR PLUS'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                onPressed: () {},
                title: "Show the previously generated QR code",
              ),
              MyButton(
                onPressed: generateQRCode,
                title: "Generate QR Code",
              ),
              MyButton(
                onPressed: scanQRCode,
                title: "Scan QR Code",
              ),
            ],
          ),
        ),
      ),
    );
  }

  void generateQRCode() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const GenerateQrCode()));
  }

  void scanQRCode() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ScanQrCode()));
  }
}
