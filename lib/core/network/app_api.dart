import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_appgain_io/core/network/api_constance.dart';
import 'package:movies_appgain_io/core/responses/responses_model.dart';
import 'package:retrofit/retrofit.dart';

part 'app_api.g.dart';

@RestApi()
@LazySingleton()
abstract class AppServiceClient {
  @factoryMethod
  factory AppServiceClient(Dio dio) = _AppServiceClient;

  @GET(ApiConstance.popularMoviesPath)
  Future<MovieModelResultResponse> getPopularMovies();
}
