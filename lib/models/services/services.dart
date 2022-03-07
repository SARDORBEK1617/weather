import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/models/forecast.dart';


class Base {
  final String _apiKey = '&appid=baf82b9931f7e32b4dbc1bafa09f1e99';
  final String _baseUrl =
      'https://api.openweathermap.org/data/2.5/forecast?q=';
  final String q = 'Tashkent';
  final String _cnt = '&cnt=5';

  // https://api.openweathermap.org/data/2.5/forecast?q=Tashkent&cnt=5&appid=baf82b9931f7e32b4dbc1bafa09f1e99

  Future<List<Forecast>> getFromApi(String country) async {
    var uri = '$_baseUrl$q$_cnt$_apiKey';
    var url = Uri.parse(uri);
    final response = await http.get(url);
    final request = jsonDecode(response.body)['list'] as List;

    print(request);

    final res = request.map((e) => Forecast.fromJson(e)).toList();
    return res;
  }
}
