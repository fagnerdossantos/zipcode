import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:zipcode/src/domain/models/zip_code_response_model.dart';
import 'package:zipcode/src/screen/viewmodel/address_view_model.dart';
import 'package:zipcode/src/core/types.dart';

part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final AddressViewModel _service;

  AddressBloc(this._service) : super(AddressInitial()) {
    //
    on<SearchEvent>((event, emit) async {
      // Animating
      emit(AddressLoading());

      // Getting API or error response
      final APIResponse result =
          await _service.handleAddressCall(code: event.code);

      // Address not found
      if (result.containsKey("notFound")) {
        emit(AddressNotFound(message: result["notFound"]));
      } else {
        // Success
        emit(AddressSuccess(model: result["value"]));
      }
    });

    //
    on<BackEvent>((event, emit) {
      emit(AddressInitial());
    });
  }
}
