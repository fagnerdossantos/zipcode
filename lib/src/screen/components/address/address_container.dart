import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/shapes.dart';

class AddressContainer extends StatelessWidget {
  final String address;
  const AddressContainer({
    super.key,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Sizing
      height: 50,
      width: double.infinity,

      // Alignment
      margin: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,

      decoration: BoxDecoration(
        // Colors
        color: green.withOpacity(.7),

        // Shape
        borderRadius: RadiusShape.small,
      ),

      child: Text(
        address,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
