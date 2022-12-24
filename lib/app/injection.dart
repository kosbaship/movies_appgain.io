import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_appgain_io/app/injection.config.dart';
import 'package:movies_appgain_io/core/network/dio_factory.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async {
  $initGetIt(getIt);
}

@module
abstract class RegisterModule {
  @preResolve
  Future<Dio> get dio => DioFactory().getDio();
}
