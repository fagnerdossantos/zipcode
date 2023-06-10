import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeAnimatedImage extends StatelessWidget {
  final Size size;
  final AnimationController controller;

  const HomeAnimatedImage(
      {super.key, required this.size, required this.controller});

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    return LottieBuilder.asset(
      "assets/animations/location.json",

      // Image controller
      controller: controller,

      //Sizing
      height: height * .45,
      width: width,

      fit: BoxFit.contain,
    );
  }
}
