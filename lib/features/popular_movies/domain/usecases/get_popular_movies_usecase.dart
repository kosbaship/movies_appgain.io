import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_appgain_io/core/error/failure.dart';
import 'package:movies_appgain_io/core/usecase/base_usecase.dart';
import 'package:movies_appgain_io/features/popular_movies/data/repository/popular_movies_repository.dart';
import 'package:movies_appgain_io/features/popular_movies/domain/entities/popular_movies.dart';

@LazySingleton()
class GetPopularMoviesUseCase
    extends BaseUseCase<List<PopularMovies>, NoParameters> {
  final PopularMoviesRepository repository;

  GetPopularMoviesUseCase(this.repository);

  @override
  Future<Either<Failure, List<PopularMovies>>> call(
      NoParameters parameters) async {
    return await repository.getPopularMovies();
  }
}
