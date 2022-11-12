import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:zipcode/src/api/controllers/api_controller.dart';
import 'package:zipcode/src/api/controllers/validations_controller.dart';
import 'package:zipcode/src/api/models/types.dart';
import 'package:zipcode/src/logic/controllers/address_controller.dart';
import 'package:zipcode/src/logic/models/address_model.dart';
import 'package:zipcode/src/presentation/components/search/search_box.dart';
import 'package:zipcode/utils/consts.dart';

class SearchButton extends StatefulWidget {
  final Size size;

  const SearchButton({super.key, required this.size});

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    // Size
    final double height = widget.size.height;
    final double width = widget.size.width;

    // Controllers
    final connection = context.read<APIController>();
    final validations = context.read<ValidationsController>();
    final address = context.read<AddressController>();

    return GestureDetector(
      // Action
      onTap: () async {
        // Defining the variables
        late final bool isConnected, isValid;
        late final APIResponse response;
        late final AddressModel model;
        final String zipCode = zipCodeController.text;

        // Ckeck Internet Connection
        isConnected = await validations.isConnected();

        if (isConnected) {
          isValid = validations.validate(ctx: context, zipCode: zipCode);

          if (isValid) {
            response = await connection.fetch(zipCode: zipCode);
            model = address.hasData(map: response);

            // Calling rout and passing model as argument
            if (!mounted) return;

            Navigator.pushNamed(context, "/address", arguments: model);
          }
        }

        // Cleaning controller
        zipCodeController.clear();
      },

      // Content
      child: SizedBox(
        // Size
        height: height * .05,
        width: width * .30,

        child: DecoratedBox(
          // Styling
          decoration: BoxDecoration(
            // Color
            color: white,

            // Border
            border: Border.all(color: black, width: 2),
            borderRadius: radius,
          ),

          child: const Center(
            child: Text(
              "Pesquisar",

              // Style
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
