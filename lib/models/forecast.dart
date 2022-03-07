import 'package:untitled/models/weather.dart';

class Forecast {
  int? dt;
  String? name;
  List<Weather>? weather;
  int? id;

  Forecast({this.dt, this.weather,this.name,this.id});

  Forecast.fromJson(Map<String, dynamic> map) {
    dt = map['dt'];
    name = map['name'];
    id = map['id'];
    if (map['weather'] != null) {
      weather = <Weather>[];
      map['weather'].forEach((v) {
        weather!.add(Weather.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    data['name'] = this.name;
    data['id'] = this.id;
    if (this.weather != null) {
      data['weather'] = this.weather!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
