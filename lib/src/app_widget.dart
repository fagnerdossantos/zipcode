import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:zipcode/src/logic/api/zipcode_api.dart';
import 'package:zipcode/src/logic/controllers/address_controller.dart';
import 'package:zipcode/src/logic/controllers/validations_controller.dart';
import 'package:zipcode/src/presentation/pages/home_page_mobile.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // API
        Provider(create: (_) => ZipCodeApiImp()),

        // Controllers
        Provider(
          create: (context) => AddressController(
            context.read<ZipCodeApiImp>(),
          ),
        ),

        Provider(create: (_) => ValidationsController()),
      ],
      child: MaterialApp(
        // Routes
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePageMobile(),
        },

        // Debug Banner (false)
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
