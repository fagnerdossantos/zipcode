import 'package:zipcode/src/api/models/types.dart';

abstract class APIControllerInterface {
  Future<APIResponse> fetch({required String zipCode});
}
