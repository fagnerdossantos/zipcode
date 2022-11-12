import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import 'package:zipcode/utils/consts.dart';

class HomeImage extends StatefulWidget {
  final Size size;
  const HomeImage({Key? key, required this.size}) : super(key: key);

  @override
  State<HomeImage> createState() => _HomeImageState();
}

class _HomeImageState extends State<HomeImage> with TickerProviderStateMixin {
  // Controller
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    animate();
    super.initState();
  }

  Future<void> animate() async {
    _controller.duration = const Duration(seconds: 3);
    _controller.repeat();
    await Future.delayed(const Duration(seconds: 6)).then(
      (value) => _controller.reset(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Controller

    // Size
    final double height = widget.size.height;
    final double width = widget.size.width;

    return GestureDetector(
      onTap: () {
        !_controller.isAnimating ? animate() : false;
      },
      child: DecoratedBox(
        // Styling
        decoration: const BoxDecoration(
          // Color
          color: white,

          // Shape
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(
              80,
            ),
          ),
        ),

        child: LottieBuilder.asset(
          "assets/animations/location.json",

          // Controller
          controller: _controller,

          // Styling
          fit: BoxFit.contain,
          height: height * .45,
          width: width,
        ),
      ),
    );
  }
}
