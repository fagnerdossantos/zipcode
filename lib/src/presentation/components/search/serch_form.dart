import 'package:flutter/material.dart';

import 'package:zipcode/utils/consts.dart';

// Code Controller
TextEditingController zipCodeController = TextEditingController();

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Controller
      controller: zipCodeController,

      // keybord
      keyboardType: TextInputType.number,

      // Styling
      decoration: InputDecoration(
        hintText: "Digite o CEP",
        hintStyle: textStyle(
          color: black.withOpacity(0.7),
        ),
      ),

      style: textStyle(),
    );
  }
}
