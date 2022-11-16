import 'package:flutter/material.dart';

import 'package:zipcode/src/presentation/components/image/home_image.dart';
import 'package:zipcode/src/presentation/components/search/search_box.dart';
import 'package:zipcode/src/presentation/components/search/serach_button.dart';
import 'package:zipcode/utils/consts.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get Screen Size
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;

    return Scaffold(
      // Background color
      backgroundColor: green,

      // Use the entire screen
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image Box
            HomeImage(
              size: size,
            ),

            verticalSpace(space: height * .1),

            SearchBox(
              size: size,
            ),

            verticalSpace(),

            SearchButton(
              size: size,
            ),

            verticalSpace(),

            // Hint Text
            Text(
              "Digite um CEP para ver o endereço correspondente",
              style: textStyle(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
