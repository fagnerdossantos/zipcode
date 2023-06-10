import 'dart:convert';

import 'package:http/http.dart' show get, Response;
import 'package:zipcode/src/domain/interfaces/i_zip_code_service.dart';

import '../../core/types.dart';

final class ZipCodeService implements IZipCodeService {
  // Url base
  final String _base = "https://viacep.com.br/ws";

  @override
  Future<APIResponse> fetch({required String code}) async {
    // Response var
    final Response response;

    try {
      response = await get(Uri.parse("$_base/$code/json"));

      return (response.statusCode == 200)
          ? jsonDecode(response.body)
          : {"error": true};
    } catch (e) {
      throw "";
    }
  }
}
