import 'package:injectable/injectable.dart';
import 'package:movies_appgain_io/core/network/app_api.dart';
import 'package:movies_appgain_io/core/responses/responses_model.dart';

abstract class PopularMoviesRemoteDataSource {
  Future<MovieModelResultResponse> getPopularMovies();
}

@LazySingleton(as: PopularMoviesRemoteDataSource)
class PopularMoviesRemoteDataSourceImpl extends PopularMoviesRemoteDataSource {
  final AppServiceClient _appServiceClient;

  PopularMoviesRemoteDataSourceImpl(this._appServiceClient);

  @override
  Future<MovieModelResultResponse> getPopularMovies() async =>
      await _appServiceClient.getPopularMovies();
}
