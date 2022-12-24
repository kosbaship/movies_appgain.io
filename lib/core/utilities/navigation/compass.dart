import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_appgain_io/core/utilities/app_managers/strings_manager.dart';
import 'package:movies_appgain_io/features/popular_movies/presentation/view/movies_screen.dart';

class Compass {
  static const String splashRoute = "/";
  static const String popularMoviesRoute = "/popular_movies";
  static const String movieDetailsRoute = "/movies_details";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Compass.splashRoute:
        return CupertinoPageRoute(
          builder: (_) => const MoviesScreen(),
        );
      case Compass.popularMoviesRoute:
        return CupertinoPageRoute(
          builder: (_) => const MoviesScreen(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return CupertinoPageRoute(
      builder: (_) => Scaffold(
          appBar: AppBar(title: const Text(StringsManager.noRouteFound)),
          body: const Center(child: Text(StringsManager.noRouteFound))),
      settings: const RouteSettings(name: 'unDefinedRoute'),
    );
  }
}
