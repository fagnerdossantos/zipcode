mixin ZipCodeValidationsService {
  // Regular expression
  final RegExp regularExp = RegExp("^[0-9]+\$");

  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return "O campo CEP não pode ficar vazio!";
    } else if (value.length != 8 || !regularExp.hasMatch(value)) {
      return "O CEP É composto por 8 números!";
    }

    return null;
  }
}
