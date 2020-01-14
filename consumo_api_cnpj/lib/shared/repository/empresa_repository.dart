import 'dart:convert';
import 'package:http/http.dart' as http;

import '../config/constantes.dart';

class EmpresaRepository{

  Future<Map<String, dynamic>> getCnpjData(String urlStr) async {
    http.Response response = await http.get(getCNPJUrl(urlStr));
    return json.decode(response.body);
  }

}