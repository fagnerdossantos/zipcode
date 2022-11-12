import 'package:zipcode/src/api/models/types.dart';
import 'package:zipcode/src/logic/models/address_model.dart';

abstract class AddressControllerInterface {
  AddressModel hasData({required APIResponse map});
}
