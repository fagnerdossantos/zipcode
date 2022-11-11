abstract class ValidationsModelInterface {
  /// A model of a regular expression that should be used
  /// RegExp("^[0-9]+\$")

  bool zipCodeLength(String zipCode);

  bool isNumeric(String zipCode);

  bool zipCodeIsNotEmpty(String zipCode);
}
