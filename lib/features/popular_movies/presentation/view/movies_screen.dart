import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_appgain_io/app/injection.dart';
import 'package:movies_appgain_io/core/utilities/app_managers/strings_manager.dart';
import 'package:movies_appgain_io/features/popular_movies/presentation/movies_bloc.dart';
import 'package:movies_appgain_io/features/popular_movies/presentation/movies_event.dart';
import 'package:movies_appgain_io/features/popular_movies/presentation/movies_state.dart';
import 'package:movies_appgain_io/features/popular_movies/presentation/view/popular_component.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          getIt.get<MoviesBloc>()..add(GetPopularMoviesEvent()),
      child: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: Container(),
              backgroundColor: Colors.grey.shade900,
              elevation: 0,
              centerTitle: true,
              title: Text(
                StringsManager.popular,
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15,
                  color: Colors.white,
                ),
              ),
            ),
            body: const PopularComponent(),
          );
        },
      ),
    );
  }
}
