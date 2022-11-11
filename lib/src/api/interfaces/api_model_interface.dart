import 'package:zipcode/src/api/models/types.dart';

abstract class APIModelInterface {
  Future<APIResponse> fetch({required String zipCode});
}
