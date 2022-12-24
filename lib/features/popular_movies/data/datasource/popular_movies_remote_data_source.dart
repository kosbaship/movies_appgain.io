import 'package:injectable/injectable.dart';
import 'package:movies_appgain_io/core/network/app_api.dart';
import 'package:movies_appgain_io/core/responses/responses_model.dart';

abstract class PopularMoviesDataSource {
  Future<MovieModelResultResponse> getPopularMovies();
}

@LazySingleton(as: PopularMoviesDataSource)
class PopularMoviesRemoteImpl extends PopularMoviesDataSource {
  final AppServiceClient _appServiceClient;

  PopularMoviesRemoteImpl(this._appServiceClient);

  @override
  Future<MovieModelResultResponse> getPopularMovies() async =>
      await _appServiceClient.getPopularMovies();
}
