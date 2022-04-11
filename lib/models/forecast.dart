import 'package:weather/models/weather.dart';

class Forecast {
  int? dt;
  String? name;
  List<Weather>? weather;
  int? id;

  Forecast({this.dt, this.weather, this.name, this.id});

  Forecast.fromJson(Map<String, dynamic> map) {
    dt = map['dt'];
    name = map['name'];
    id = map['id'];
    if (map['weather'] != null) {
      weather = <Weather>[];
      map['list'].forEach((v) {
        weather!.add(Weather.fromJson(v['weather']));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['dt'] = dt;
    data['name'] = name;
    data['id'] = id;
    if (weather != null) {
      data['weather'] = weather!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
