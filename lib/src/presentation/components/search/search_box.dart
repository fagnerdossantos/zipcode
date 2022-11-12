import 'package:flutter/material.dart';

import 'package:zipcode/utils/consts.dart';

// Code Controller
TextEditingController zipCodeController = TextEditingController();

class SearchBox extends StatelessWidget {
  final Size size;

  const SearchBox({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    return Container(
      // Size
      height: height * .1,
      width: width * .9,

      // Padding
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),

      // Styling
      decoration: BoxDecoration(
        // Color
        color: white,

        // Border
        border: Border.all(color: black, width: 2),
        borderRadius: radius,
      ),

      child: TextField(
        // Controller
        controller: zipCodeController,

        //
        decoration: const InputDecoration(
          hintText: "Digite o CEP",
        ),
        style: style(
          size: height * 0.03,
        ),
      ),
    );
  }
}
