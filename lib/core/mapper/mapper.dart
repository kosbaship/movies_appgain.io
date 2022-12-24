import 'package:movies_appgain_io/app/constants.dart';
import 'package:movies_appgain_io/core/responses/responses_model.dart';
import 'package:movies_appgain_io/features/popular_movies/domain/entities/popular_movies.dart';

extension PopularMoviesListMapper on MovieModelResultResponse? {
  List<PopularMovies> toDomainAsPopularMoviesList() =>
      (this?.results?.map((res) => res.toDomain()) ?? Constants.emptyIterable)
          .cast<PopularMovies>()
          .toList();
}

extension PopularMovieMapper on MovieModelResponse? {
  PopularMovies toDomain() => PopularMovies(
      id: this?.id ?? Constants.zero,
      title: this?.title ?? Constants.empty,
      backdropPath: this?.backdropPath ?? Constants.empty,
      genreIds: (this?.genreIds?.map((res) => res) ?? Constants.emptyIterable)
          .cast<int>()
          .toList(),
      overview: this?.overview ?? Constants.empty,
      releaseDate: this?.releaseDate ?? Constants.empty,
      voteAverage: this?.voteAverage ?? Constants.doubleZero);
}
