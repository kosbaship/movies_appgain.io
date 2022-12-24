import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_appgain_io/core/usecase/base_usecase.dart';
import 'package:movies_appgain_io/core/utilities/common/enums.dart';
import 'package:movies_appgain_io/features/popular_movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies_appgain_io/features/popular_movies/presentation/movies_event.dart';
import 'package:movies_appgain_io/features/popular_movies/presentation/movies_state.dart';

@injectable
class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetPopularMoviesUseCase getPopularMoviesUseCase;

  MoviesBloc(
    this.getPopularMoviesUseCase,
  ) : super(const MoviesState()) {
    on<GetPopularMoviesEvent>(_getPopularMovies);
  }

  FutureOr<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getPopularMoviesUseCase(const NoParameters());

    result.fold(
      (l) => emit(
        state.copyWith(
          popularState: RequestState.error,
          popularMessage: l.message,
        ),
      ),
      (r) => emit(
        state.copyWith(
          popularMovies: r,
          popularState: RequestState.loaded,
        ),
      ),
    );
  }
}
