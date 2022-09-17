import 'package:flutter/material.dart';

import 'package:zipcode/utils/consts.dart';

class HomeImage extends StatelessWidget {
  final Size size;
  const HomeImage({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size

    final double height = size.height;
    final double width = size.width;

    return DecoratedBox(
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

      child: Image(
        image: const AssetImage(
          "assets/images/local.png",
        ),
        height: height * .45,
        width: width,
      ),
    );
  }
}
