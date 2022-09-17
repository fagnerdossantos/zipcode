class ValidationsController {
  // Regular expression
  final regularExp = RegExp("^[0-9]+\$");

  bool zipCodeLength(String zipCode) => zipCode.length == 8;

  bool isNumeric(String zipCode) => regularExp.hasMatch(zipCode);

  bool zipCodeIsNotEmpty(String zipCode) => zipCode.isNotEmpty;
}
