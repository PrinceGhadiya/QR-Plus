import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_plus/screens/components/my_button.dart';

class GenerateQrCode extends StatefulWidget {
  const GenerateQrCode({super.key});

  @override
  State<GenerateQrCode> createState() => _GenerateQrCodeState();
}

class _GenerateQrCodeState extends State<GenerateQrCode> {
  var urlController = TextEditingController();
  QrImage? qrImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Generate QR Code"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (urlController.text.isNotEmpty)
                QrImageView(
                  data: '1234567890',
                  version: QrVersions.auto,
                  size: 200.0,
                ),
              const SizedBox(height: 8),
              TextField(
                controller: urlController,
                onSubmitted: (value) {
                  urlController.text = value;
                  setState(() {});
                },
                decoration: InputDecoration(
                    hintText: "Enter Data to Generate QR Code",
                    suffixIcon: IconButton(
                        onPressed: () {
                          urlController.clear();
                          setState(() {});
                        },
                        icon: const Icon(Icons.cancel)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2,
                      ),
                    )),
              ),
              const SizedBox(height: 8),
              MyButton(
                title: "Generate",
                onPressed: generateQRCode,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void generateQRCode() {
    setState(() {});
  }
}
