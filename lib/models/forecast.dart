import 'package:untitled/models/weather.dart';

class Forecast {
  int? dt;
  List<Weather>? weather;

  Forecast({this.dt, this.weather});

  Forecast.fromJson(Map<String, dynamic> map) {
    dt = map['dt'];
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
    if (this.weather != null) {
      data['weather'] = this.weather!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
