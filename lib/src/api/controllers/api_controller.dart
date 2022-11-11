import 'package:zipcode/src/api/interfaces/api_controller_interface.dart';
import 'package:zipcode/src/api/interfaces/api_model_interface.dart';
import 'package:zipcode/src/api/models/types.dart';

class APIController implements APIControllerInterface {
  // Dependencies
  final APIModelInterface _model;
  APIController(this._model);

  @override
  Future<APIResponse> fetch({required String zipCode}) async {
    // Response
    final APIResponse response = await _model.fetch(zipCode: zipCode);

    return response;
  }
}
