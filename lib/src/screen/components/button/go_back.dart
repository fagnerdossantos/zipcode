import 'package:flutter/material.dart'
    show
        BuildContext,
        Icon,
        IconButton,
        Icons,
        Row,
        StatelessWidget,
        Text,
        Widget;

import 'package:provider/provider.dart' show ReadContext;
import 'package:zipcode/src/core/sizes.dart';
import 'package:zipcode/src/domain/bloc/address_bloc.dart';

class GoBack extends StatelessWidget {
  const GoBack({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller
    final bloc = context.read<AddressBloc>();

    return IconButton(
      onPressed: () => bloc.add(BackEvent()),
      icon: const Row(
        children: [
          Icon(
            Icons.arrow_back_ios_new,
          ),
          HorizontalSpace(width: 15),
          Text("Back"),
        ],
      ),
    );
  }
}
