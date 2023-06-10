import 'package:flutter/material.dart'
    show StatelessWidget, Widget, BuildContext, Scaffold, Center;
import 'package:zipcode/src/screen/components/loading/loading_animation.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LoadingAnimation(),
      ),
    );
  }
}
