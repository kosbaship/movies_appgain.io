import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_appgain_io/core/error/exceptions.dart';
import 'package:movies_appgain_io/core/error/failure.dart';
import 'package:movies_appgain_io/core/mapper/mapper.dart';
import 'package:movies_appgain_io/features/popular_movies/data/datasource/popular_movies_remote_data_source.dart';
import 'package:movies_appgain_io/features/popular_movies/domain/entities/popular_movies.dart';

abstract class PopularMoviesRepository {
  Future<Either<Failure, List<PopularMovies>>> getPopularMovies();
}

@LazySingleton(as: PopularMoviesRepository)
class PopularMoviesRepositoryImpl extends PopularMoviesRepository {
  final PopularMoviesRemoteDataSource remoteDataSource;

  PopularMoviesRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<PopularMovies>>> getPopularMovies() async {
    final result = await remoteDataSource.getPopularMovies();
    try {
      return Right(result.toDomainAsPopularMoviesList());
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
