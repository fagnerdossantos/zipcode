import 'package:flutter/material.dart';

import 'package:zipcode/utils/consts.dart';

void errorMessage({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      // SnackBar configurations
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,

      content: ClipRRect(
        borderRadius: radius,

        // Content
        child: Container(
          // Size
          height: 100,

          decoration: const BoxDecoration(
            // BG image
            image: DecorationImage(
              image: AssetImage("assets/images/bubbles.jpg"),
              fit: BoxFit.cover,
            ),
          ),

          child: Column(
            // Alignment
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const Icon(Icons.warning),
              Text(
                message,
                style: textStyle(),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
