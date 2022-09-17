import 'package:flutter/material.dart';

dynamic errorMessage({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 3),
      content: Text(message),
    ),
  );
}
