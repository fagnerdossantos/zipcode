import 'package:flutter/material.dart';

import 'package:zipcode/src/presentation/components/search/serch_form.dart';
import 'package:zipcode/utils/consts.dart';

class SearchBox extends StatelessWidget {
  final Size size;

  const SearchBox({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    return SizedBox(
      // Size
      height: height * .12,
      width: width * .9,

      // Styling
      child: Card(
        color: white,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: radius),

        // Padding
        child: const Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),

          // Content
          child: SearchForm(),
        ),
      ),
    );
  }
}
