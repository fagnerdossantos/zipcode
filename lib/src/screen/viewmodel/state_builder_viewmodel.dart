import 'package:flutter/material.dart'
    show StatelessWidget, Widget, BuildContext;

import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import 'package:zipcode/src/domain/bloc/address_bloc.dart';
import 'package:zipcode/src/screen/view/address_view.dart';
import 'package:zipcode/src/screen/view/error_view.dart';
import 'package:zipcode/src/screen/view/home_view.dart';
import 'package:zipcode/src/screen/view/loading_view.dart';

class StateBuilderViewModel extends StatelessWidget {
  const StateBuilderViewModel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressBloc, AddressState>(
      //
      builder: (context, state) {
        return switch (state) {
          AddressInitial() => const HomeView(),
          AddressNotFound(message: final message) =>
            ErrorView(message: message),
          AddressLoading() => const LoadingView(),
          AddressSuccess(model: final model) => AddressView(model: model),
        };
      },
    );
  }
}
