import 'package:flutter/widgets.dart';

import 'package:zipcode/src/api/interfaces/validations_controller_interface.dart';
import 'package:zipcode/src/api/interfaces/validations_model_interface.dart';
import 'package:zipcode/src/api/models/internet_connection_mixin.dart';
import 'package:zipcode/src/presentation/components/error/error_message.dart';

class ValidationsController
    with InternetConnection
    implements ValidationsControllerInterface {
  // Dependencies
  final ValidationsModelInterface _model;
  ValidationsController(this._model);

  @override
  bool validate({required BuildContext ctx, required String zipCode}) {
    // Defining
    late final bool isNumeric, zipCodeIsNotEmpty, zipCodeLength;

    // Validating
    isNumeric = _model.isNumeric(zipCode);
    zipCodeIsNotEmpty = _model.zipCodeIsNotEmpty(zipCode);
    zipCodeLength = _model.zipCodeLength(zipCode);

    if (!zipCodeIsNotEmpty) {
      errorMessage(
          context: ctx,
          message: "O campo não pode ficar vazio. Por favor, digite um CEP!");
      return false;
    } else if (!isNumeric) {
      errorMessage(context: ctx, message: "Só são aceitos números!");
      return false;
    } else if (!zipCodeLength) {
      errorMessage(
          context: ctx, message: "O CEP tem que ser composto por 8 números!");
      return false;
    }

    return isNumeric;
  }
}
