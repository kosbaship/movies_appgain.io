import 'package:equatable/equatable.dart';
import 'package:movies_appgain_io/core/utilities/common/enums.dart';
import 'package:movies_appgain_io/features/popular_movies/domain/entities/popular_movies.dart';

class MoviesState extends Equatable {
  final List<PopularMovies> popularMovies;
  final RequestState popularState;
  final String popularMessage;

  const MoviesState({
    this.popularMovies = const [],
    this.popularState = RequestState.loading,
    this.popularMessage = '',
  });

  MoviesState copyWith({
    List<PopularMovies>? popularMovies,
    RequestState? popularState,
    String? popularMessage,
  }) {
    return MoviesState(
      popularMovies: popularMovies ?? this.popularMovies,
      popularState: popularState ?? this.popularState,
      popularMessage: popularMessage ?? this.popularMessage,
    );
  }

  @override
  List<Object?> get props => [
        popularMovies,
        popularState,
        popularMessage,
      ];
}
