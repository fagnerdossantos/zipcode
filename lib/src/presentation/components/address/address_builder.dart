import 'package:flutter/material.dart';

import 'package:zipcode/src/logic/models/address_model.dart';
import 'package:zipcode/src/presentation/components/address/address.dart';

class AddressBuilder extends StatelessWidget {
  final Size size;
  final AddressModel model;
  const AddressBuilder({super.key, required this.size, required this.model});

  @override
  Widget build(BuildContext context) {
    List<String> data = [
      model.zipcode,
      model.street,
      model.district,
      model.city,
      model.state,
    ];

    return ListView.builder(
      // Padding
      padding: EdgeInsets.only(top: size.height * 0.2),
      // Len
      itemCount: data.length,

      // Builder
      itemBuilder: (_, int index) {
        return Address(size: size, data: data[index]);
      },
    );
  }
}
