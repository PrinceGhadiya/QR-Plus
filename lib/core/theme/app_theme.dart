import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    /**
     * Color schemes for the entire application
     */
    colorScheme: ColorScheme.light(
      surface: Colors.grey[400]!,
      primary: Colors.blue[500]!,
      onPrimary: Colors.white,
      onSurface: Colors.black,
    ),
  );
}
