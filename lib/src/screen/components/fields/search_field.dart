import 'package:flutter/material.dart';
import 'package:zipcode/src/domain/services/zip_code_validations_service.dart';

import '../../../core/utils.dart';

// ZipCodeController
TextEditingController zipcodeController = TextEditingController();

// FORM KEY
final codeKey = GlobalKey<FormFieldState>();

class SearchField extends StatelessWidget with ZipCodeValidationsService {
  SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        // key
        key: codeKey,

        // Keyboard
        keyboardType: TextInputType.number,

        validator: validate,

        maxLength: 8,

        // Styling
        decoration: InputDecoration(
          // Label
          label: Text(
            "Digite o CEP",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelBehavior: FloatingLabelBehavior.always,

          // Border and Shape
          border: OutlineInputBorder(
            // borderSide: BorderSide(color: black.withOpacity(.5)),
            borderRadius: RadiusShape.small,
          ),

          errorStyle: const TextStyle(
            fontSize: 18,
          ),
        ),

        // Controller
        controller: zipcodeController,
      ),
    );
  }
}
