import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:zipcode/src/logic/controllers/address_controller.dart';
import 'package:zipcode/src/logic/controllers/internet_connection_controller.dart';
import 'package:zipcode/src/logic/controllers/validations_controller.dart';
import 'package:zipcode/src/logic/models/address_model.dart';
import 'package:zipcode/src/presentation/components/bottomSheet/model_bottom_sheet.dart';
import 'package:zipcode/src/presentation/components/error/error_message.dart';
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
    final addressController = context.read<AddressController>();
    final validationsController = context.read<ValidationsController>();

    return GestureDetector(
      // Action
      onTap: () async {
        // Ckeck Internet Connection
        final isConnected = await InternetConnectionController().isConnected();

        if (!isConnected) {
          // If there is no connection
          errorMessage(
            context: context,
            message: "Internet não conectada!",
          );
        } else {
          // ZipCode
          final String zipCode = zipCodeController.text;

          if (!validationsController.zipCodeIsNotEmpty(zipCode)) {
            errorMessage(
              context: context,
              message: "Digite um CEP!",
            );
          } else if (!validationsController.isNumeric(zipCode)) {
            errorMessage(
              context: context,
              message: "Só são aceitos números!",
            );
          } else if (!validationsController.zipCodeLength(zipCode)) {
            errorMessage(
              context: context,
              message: "O CEP tem que ser composto por 8 números!",
            );
          } else {
            //
            addressController.zipcode = zipCode;
            final AddressModel model = await addressController.address();

            if (!mounted) return;
            modelBottomSheet(context, widget.size, model);
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
            borderRadius: radiusTwenty,
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
