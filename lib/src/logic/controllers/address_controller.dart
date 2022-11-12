import 'package:zipcode/src/api/models/types.dart';
import 'package:zipcode/src/logic/interfaces/address_controller_interface.dart';
import 'package:zipcode/src/logic/models/address_model.dart';

class AddressController implements AddressControllerInterface {
  @override
  AddressModel hasData({required APIResponse map}) {
    // There are data
    if (map.containsKey("cep")) {
      final AddressModel model = AddressModel.fromMap(map);
      return model;
    }

    // Invalid Code. There're no Data
    final AddressModel model = AddressModel(
      zipcode: "CEP Inválido",
      street: "",
      district: "",
      city: "",
      state: "",
    );

    return model;
  }
}
