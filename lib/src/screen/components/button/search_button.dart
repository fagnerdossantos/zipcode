import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zipcode/src/domain/bloc/address_bloc.dart';
import 'package:zipcode/src/screen/components/fields/search_field.dart';

import '../../../core/colors.dart';
import '../../../core/shapes.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Bloc controller
    final bloc = context.read<AddressBloc>();

    return InkWell(
      // Actions
      onTap: () async {
        if (codeKey.currentState?.validate() != null) {
          if (codeKey.currentState!.validate()) {
            bloc.add(SearchEvent(code: zipcodeController.text));
            zipcodeController.clear();
          }
        }

        zipcodeController.clear();
      },

      child: Card(
        // Colors
        color: white,

        elevation: 3,

        // Radius Shape
        shape: RoundedRectangleBorder(
          borderRadius: RadiusShape.small,
        ),

        child: SizedBox(
          height: 50,
          width: 150,
          child: Center(
            child: Text(
              "Pesquisar",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ),
    );
  }
}
