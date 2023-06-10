import 'package:flutter/material.dart';
import 'package:zipcode/src/screen/components/images/home_animated_image.dart';

import '../../../core/utils.dart';

class AnimatedImageContainer extends StatefulWidget {
  final Size size;
  const AnimatedImageContainer({Key? key, required this.size})
      : super(key: key);

  @override
  State<AnimatedImageContainer> createState() => _AnimatedImageContainerState();
}

class _AnimatedImageContainerState extends State<AnimatedImageContainer>
    with TickerProviderStateMixin {
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

    await Future.delayed(const Duration(seconds: 6)).then((value) {
      if (mounted) _controller.reset();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
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

        child: HomeAnimatedImage(
          controller: _controller,
          size: widget.size,
        ),
      ),
    );
  }
}
