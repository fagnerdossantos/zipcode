import 'package:flutter/material.dart';

import 'package:zipcode/src/logic/models/address_model.dart';
import 'package:zipcode/utils/consts.dart';

modelBottomSheet(BuildContext context, Size size, AddressModel model) {
  List<String> modelData = [
    model.zipcode,
    model.street,
    model.district,
    model.city,
    model.state,
  ];

  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Show Model Info
          SizedBox(
            // Size
            height: size.height * 0.4,

            // List Builder
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    modelData[index].toString(),
                    style: TextStyle(fontSize: size.height * .03),
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),

          // Button
          SizedBox(
            // Size
            height: size.height * 0.03,
            width: size.width * 0.3,

            child: DecoratedBox(
              // Styling
              decoration: BoxDecoration(
                // Color
                color: green,

                // Shape

                borderRadius: radiusTwenty,
              ),
              child: GestureDetector(
                // Action
                onTap: () => Navigator.pop(context),

                // Label
                child: const Center(
                  child: Text(
                    "FECHAR",
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
