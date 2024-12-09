import 'package:flutter/material.dart';
import 'package:qr_plus/core/theme/app_theme.dart';
import '../screens/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      routes: {
        '/': (_) => const HomePage(),
      },
    );
  }
}
