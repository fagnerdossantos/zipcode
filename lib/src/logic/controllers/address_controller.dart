import 'package:zipcode/src/logic/api/zipcode_api.dart';
import 'package:zipcode/src/logic/models/address_model.dart';

class AddressController {
  //
  final ZipCodeApiImp _api;
  AddressController(this._api);
  String zipcode = "";

  // Check if there is any value
  bool isVoid(Map<String, dynamic> map) =>
      map.containsKey("error") || map.containsKey("erro");

  Future<AddressModel> address() async {
    // Result
    final map = await _api.fetch(zipcode);
    bool isEmpty = isVoid(map);

    //
    if (!isEmpty) {
      return _toAddressModel(map);
    } else {
      return AddressModel(
          zipcode: "",
          street: "",
          district: "CEP não encontrado na base de dados!",
          city: "",
          state: "");
    }
  }

  // Converting Map To Address Model
  AddressModel _toAddressModel(Map<String, dynamic> map) {
    //
    String zipcode;
    String street;
    String district;
    String city;
    String state;

    // Converting
    zipcode = map["cep"];
    street = map["logradouro"];
    district = map["bairro"];
    city = map["localidade"];
    state = map["uf"];

    return AddressModel(
        zipcode: zipcode,
        street: street,
        district: district,
        city: city,
        state: state);
  }
}
