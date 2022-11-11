import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:zipcode/src/api/interfaces/api_model_interface.dart';
import 'package:zipcode/src/api/models/types.dart';

class APIModel implements APIModelInterface {
  @override
  Future<APIResponse> fetch({required String zipCode}) async {
    final Uri url = Uri.parse("https://viacep.com.br/ws/$zipCode/json/");

    try {
      final http.Response response = await http.get(url);

      // Status
      return response.statusCode == 200
          ? jsonDecode(response.body)
          : {"error": true};
    } catch (error) {
      return {"error": true};
    }
  }
}
