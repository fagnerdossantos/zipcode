import 'package:flutter/material.dart';
import 'package:zipcode/src/screen/components/button/go_back.dart';

class ErrorView extends StatelessWidget {
  final String message;
  const ErrorView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    // Bg image
    const String bgImage = "assets/images/bubbles.jpg";
    return Scaffold(
      //
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        title: const GoBack(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Container(
        // Sizing
        height: double.infinity,
        width: double.infinity,

        // Bg Image
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(bgImage), fit: BoxFit.cover),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Warning icon
            const Icon(
              Icons.warning_rounded,
              size: 80,
            ),

            // Message
            Text(
              message,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
