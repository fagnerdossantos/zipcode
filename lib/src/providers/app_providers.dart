import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../data/remote/zip_code_service.dart';
import '../domain/bloc/address_bloc.dart';
import '../screen/viewmodel/address_view_model.dart';

List<SingleChildWidget> appProviders = [
  // Services
  Provider(create: (_) => ZipCodeService()),

  // ViewModels
  Provider(
    create: (context) => AddressViewModel(
      context.read<ZipCodeService>(),
    ),
  ),

  // Blocs
  BlocProvider(
    create: (context) => AddressBloc(
      context.read<AddressViewModel>(),
    ),
  )
];
