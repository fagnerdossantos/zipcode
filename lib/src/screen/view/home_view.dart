import 'package:flutter/material.dart'
    show
        StatelessWidget,
        Widget,
        BuildContext,
        Scaffold,
        MediaQuery,
        Size,
        SingleChildScrollView,
        Column;

import 'package:zipcode/src/screen/components/button/search_button.dart';
import 'package:zipcode/src/screen/components/fields/search_field.dart';
import 'package:zipcode/src/screen/components/images/animated_image_container.dart';

import '../../core/utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get Screen Size
    final Size size = MediaQuery.sizeOf(context);
    final double height = size.height;

    return Scaffold(
      // BG color
      backgroundColor: green,
      //
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Home Animated Image
            AnimatedImageContainer(size: size),

            // Provide a little space
            VerticalSpace(height: height * .2),

            // Search box
            SearchField(),

            // Provide a little space
            VerticalSpace(height: height * .05),

            // Search Button
            const SearchButton(),
          ],
        ),
      ),
    );
  }
}
