import 'package:flutter/widgets.dart';

abstract class ValidationsControllerInterface {
  /// A model of a regular expression that should be used
  /// RegExp("^[0-9]+\$")

  bool validate({required BuildContext ctx, required String zipCode});
}
