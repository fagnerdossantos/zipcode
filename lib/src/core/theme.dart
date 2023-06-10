import 'package:flutter/material.dart';
import 'package:zipcode/src/core/utils.dart';

final class APPTheme {
  // Static Instance
  static final instance = APPTheme._();
  APPTheme._();

  final theme = ThemeData(
    // Material 3 Settings
    useMaterial3: true,
    colorSchemeSeed: green,

    // Text
    textTheme: TextTheme(
      // Large
      bodyLarge: TextStyle(
        color: black.withOpacity(.7),
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),

      // Medium
      bodyMedium: TextStyle(
        color: black.withOpacity(.7),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
