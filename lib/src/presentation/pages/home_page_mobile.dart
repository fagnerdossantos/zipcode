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
    final double width = size.width;

    return Scaffold(
      // Background color
      backgroundColor: green,

      // Use the entire screen
      body: SingleChildScrollView(
        child: SizedBox(
          // Size
          height: height,
          width: width,

          child: Column(
            children: [
              // Image Box
              HomeImage(
                size: size,
              ),

              // Give Some Space
              SizedBox(
                height: height * .1,
              ),

              SearchBox(
                size: size,
              ),

              // Give Some Space
              SizedBox(
                height: height * .05,
              ),

              SearchButton(
                size: size,
              ),

              // Give Some Space
              SizedBox(
                height: height * .05,
              ),

              // Hint Text
              Text(
                "Pesquise um endereço usando o número do CEP",
                style: style(
                  size: height * .025,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
