import 'package:flutter/material.dart';

import 'package:zipcode/utils/consts.dart';

class Address extends StatelessWidget {
  final Size size;
  final String data;
  const Address({
    Key? key,
    required this.size,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        // Size
        height: size.height * 0.1,
        width: size.width,

        // Styling
        decoration: BoxDecoration(
          color: deepPurple.withOpacity(0.8),
          borderRadius: BorderRadius.circular(
            50,
          ),
        ),

        child: Center(
          child: Text(
            data,
            style: textStyle(color: white, size: 28),
          ),
        ),
      ),
    );
  }
}
