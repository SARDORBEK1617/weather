
import 'package:untitled/models/services/services.dart';
import 'package:untitled/models/weather.dart';

class PopularRepository {
  final BaseService _popularService = Weather() as BaseService;

  Future<List<Weather>> fetchMovies() async {
    dynamic response = await _popularService.getResponse('/popular');

    final jsonData = response['results'] as List;

    List<Weather> weather = jsonData.map((e) => Weather.fromJson(e)).toList();
    return weather;
  }
}
