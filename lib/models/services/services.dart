import 'dart:convert';
import 'package:http/http.dart'as http;

import '../weather.dart';

class Base {
  final String _apiKey = '?api_key=baf82b9931f7e32b4dbc1bafa09f1e99';
  final String _baseUrl = 'https://api.openweathermap.org/data/2.5/weather';
  final String _country = 'country=';

  Future<List<Weather>> getFromApi(String country)async{
   var uri ='$_baseUrl$_country$_apiKey';
   var url =Uri.parse(uri);
   final response =await http.get(url);
   final request = jsonDecode(response.body)['weather']as List;

   print(request);

   final res =request.map((e) => Weather.fromJson(e)).toList();
   return res;
  }
}
