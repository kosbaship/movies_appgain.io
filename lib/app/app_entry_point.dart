import 'package:flutter/material.dart';
import 'package:movies_appgain_io/core/utilities/app_managers/strings_manager.dart';
import 'package:movies_appgain_io/core/utilities/navigation/compass.dart';

class MoviesApp extends StatefulWidget {
  const MoviesApp._internal(); // named constructor

  static const _instance =
      MoviesApp._internal(); // singleton design pattern || Single Instance

  factory MoviesApp() => _instance; // Factory Method

  @override
  State<MoviesApp> createState() => _MoviesAppState();
}

class _MoviesAppState extends State<MoviesApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringsManager.appName,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Colors.grey.shade900),
      initialRoute: Compass.popularMoviesRoute,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
