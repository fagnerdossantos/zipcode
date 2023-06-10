import 'package:flutter/material.dart';
import 'package:zipcode/src/domain/models/zip_code_response_model.dart';
import 'package:zipcode/src/screen/components/address/address_builder.dart';
import 'package:zipcode/src/screen/components/button/go_back.dart';
import 'package:zipcode/src/core/utils.dart';

class AddressView extends StatelessWidget {
  final ZipCodeResponseModel model;
  const AddressView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    // Getting the screen size
    final Size size = MediaQuery.sizeOf(context);
    final double height = size.height;

    final List<String> data = [
      model.zipCode,
      model.street,
      model.neighborhood,
      model.city,
      model.state,
    ];

    return Scaffold(
      // Bar
      backgroundColor: white,

      appBar: AppBar(
        title: const GoBack(),
        backgroundColor: green,
      ),

      body: DecoratedBox(
        // Bg Image
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/map-of-brazil.png",
            ),
            fit: BoxFit.contain,
          ),
        ),

        child: Padding(
          //
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),

          child: Column(
            children: [
              // Provide some space
              VerticalSpace(height: height * .1),

              Expanded(
                child: AddressBuilder(
                  data: data,
                ),
              ),

              // Provide some space
              VerticalSpace(height: height * .1),
            ],
          ),
        ),
      ),
    );
  }
}
