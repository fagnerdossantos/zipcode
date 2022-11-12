import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:zipcode/src/api/controllers/api_controller.dart';
import 'package:zipcode/src/api/controllers/validations_controller.dart';
import 'package:zipcode/src/api/models/api_model.dart';
import 'package:zipcode/src/api/models/validations_model.dart';
import 'package:zipcode/src/logic/controllers/address_controller.dart';
import 'package:zipcode/src/presentation/pages/address_page.dart';
import 'package:zipcode/src/presentation/pages/home_page_mobile.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        /* API Providers */
        // Models
        Provider(create: (_) => APIModel()),
        Provider(create: (_) => ValidationsModel()),

        // Controllers
        Provider(
          create: (context) => APIController(context.read<APIModel>()),
        ),
        Provider(
          create: (context) =>
              ValidationsController(context.read<ValidationsModel>()),
        ),

        // Controllers
        Provider(
          create: (context) => AddressController(),
        ),
      ],
      child: MaterialApp(
        // Routes
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePageMobile(),
          "/address": (context) => const AddressPage(),
        },

        // Debug Banner (false)
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
