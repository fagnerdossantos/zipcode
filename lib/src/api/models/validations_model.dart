import 'package:zipcode/src/api/interfaces/validations_model_interface.dart';

class ValidationsModel implements ValidationsModelInterface {
  // Regular expression
  final RegExp regularExp = RegExp("^[0-9]+\$");

  @override
  bool zipCodeLength(String zipCode) => zipCode.length == 8;

  @override
  bool isNumeric(String zipCode) => regularExp.hasMatch(zipCode);

  @override
  bool zipCodeIsNotEmpty(String zipCode) => zipCode.isNotEmpty;
}
