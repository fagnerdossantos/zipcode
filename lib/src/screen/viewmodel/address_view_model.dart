import 'package:zipcode/src/domain/interfaces/i_zip_code_service.dart';
import 'package:zipcode/src/domain/models/zip_code_response_model.dart';

import '../../core/types.dart';

class AddressViewModel {
  // Dependencies injection
  final IZipCodeService _service;

  AddressViewModel(this._service);

  Future<Map<String, dynamic>> handleAddressCall({
    required String code,
  }) async {
    final APIResponse response;

    response = await _service.fetch(code: code);

    if (response.containsKey("erro") || response.containsKey("error")) {
      return {"notFound": "CEP não encontrado na base de dados!"};
    } else {
      return {"value": ZipCodeResponseModel.fromJson(response)};
    }
  }
}
