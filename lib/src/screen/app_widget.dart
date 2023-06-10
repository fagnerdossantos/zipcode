import 'package:flutter/material.dart'
    show StatelessWidget, Widget, BuildContext, MaterialApp;

import 'package:provider/provider.dart';
import 'package:zipcode/src/providers/app_providers.dart';

import 'package:zipcode/src/screen/viewmodel/state_builder_viewmodel.dart';

import '../core/theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: appProviders,
      child: MaterialApp(
        // Routes
        home: const StateBuilderViewModel(),

        // Debug Banner (false)
        debugShowCheckedModeBanner: false,

        theme: APPTheme.instance.theme,
      ),
    );
  }
}
