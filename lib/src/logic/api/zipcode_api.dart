import 'dart:convert';

import 'package:flutter/widgets.dart';

import 'package:http/http.dart' as http;

abstract class ZipCodeApi {}

class ZipCodeApiImp {
  // Make the Request
  Future<Map<String, dynamic>> fetch(String zipCode) async {
    final Uri url = Uri.parse("https://viacep.com.br/ws/$zipCode/json/");

    try {
      final request = await http.get(url);

      // Status
      if (request.statusCode == 200) {
        return jsonDecode(request.body);
      } else {
        return {"error": "true"};
      }
    } catch (error) {
      return {"error": error.toString()};
    }
  }
}
