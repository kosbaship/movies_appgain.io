// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/network/app_api.dart' as _i4;
import '../features/popular_movies/data/datasource/popular_movies_remote_data_source.dart'
    as _i5;
import '../features/popular_movies/data/repository/popular_movies_repository.dart'
    as _i6;
import '../features/popular_movies/domain/usecases/get_popular_movies_usecase.dart'
    as _i7;
import '../features/popular_movies/presentation/movies_bloc.dart' as _i8;
import 'injection.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  await gh.factoryAsync<_i3.Dio>(
    () => registerModule.dio,
    preResolve: true,
  );
  gh.lazySingleton<_i4.AppServiceClient>(
      () => _i4.AppServiceClient(get<_i3.Dio>()));
  gh.lazySingleton<_i5.PopularMoviesDataSource>(
      () => _i5.PopularMoviesRemoteImpl(get<_i4.AppServiceClient>()));
  gh.lazySingleton<_i6.PopularMoviesRepository>(() =>
      _i6.PopularMoviesRepositoryImpl(get<_i5.PopularMoviesDataSource>()));
  gh.lazySingleton<_i7.GetPopularMoviesUseCase>(
      () => _i7.GetPopularMoviesUseCase(get<_i6.PopularMoviesRepository>()));
  gh.factory<_i8.MoviesBloc>(
      () => _i8.MoviesBloc(get<_i7.GetPopularMoviesUseCase>()));
  return get;
}

class _$RegisterModule extends _i9.RegisterModule {}
