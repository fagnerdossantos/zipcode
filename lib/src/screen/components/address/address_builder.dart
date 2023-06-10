import 'package:flutter/material.dart'
    show StatelessWidget, Widget, BuildContext, ListView;

import 'address_container.dart';

class AddressBuilder extends StatelessWidget {
  final List<String> data;
  const AddressBuilder({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (_, index) {
        return AddressContainer(
          address: data[index],
        );
      },
    );
  }
}
