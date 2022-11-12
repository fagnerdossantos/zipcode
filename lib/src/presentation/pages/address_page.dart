import 'package:flutter/material.dart';

import 'package:zipcode/src/logic/models/address_model.dart';
import 'package:zipcode/src/presentation/components/address/address_builder.dart';
import 'package:zipcode/utils/consts.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get Screen Size
    final Size size = MediaQuery.of(context).size;

    final AddressModel model =
        ModalRoute.of(context)!.settings.arguments as AddressModel;

    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: const Text("Endereço"),
        backgroundColor: green,
        centerTitle: true,
      ),

      // Content
      body: AddressBuilder(
        size: size,
        model: model,
      ),
    );
  }
}
