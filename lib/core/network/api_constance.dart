import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstance {
  static final baseUrl = dotenv.get('BASE_URL');
  static const _apiKeyV3Auth = "622100ab57409eb1136e8113fc8c10ea";

  static const String popularMoviesPath =
      "/movie/popular?api_key=$_apiKeyV3Auth";

  static String movieDetailsPath(int movieId) =>
      "/movie/$movieId?api_key=$_apiKeyV3Auth";

  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';

  static const apiTimeOut = 60000;
}
