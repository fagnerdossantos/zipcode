import 'package:flutter/material.dart'
    show StatelessWidget, Widget, BuildContext;
import 'package:lottie/lottie.dart' show LottieBuilder;

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return LottieBuilder.asset("assets/animations/waiting.json");
  }
}
