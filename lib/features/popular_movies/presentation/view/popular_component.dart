import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_appgain_io/core/network/api_constance.dart';
import 'package:movies_appgain_io/core/utilities/common/enums.dart';
import 'package:movies_appgain_io/features/popular_movies/presentation/movies_bloc.dart';
import 'package:movies_appgain_io/features/popular_movies/presentation/movies_state.dart';
import 'package:shimmer/shimmer.dart';

class PopularComponent extends StatelessWidget {
  const PopularComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: (previous, current) =>
          previous.popularState != current.popularState,
      builder: (context, state) {
        switch (state.popularState) {
          case RequestState.loading:
            return const SizedBox(
              height: 250.0,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case RequestState.loaded:
            return FadeIn(
              duration: const Duration(milliseconds: 500),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.popularMovies.length,
                itemBuilder: (context, index) {
                  final movie = state.popularMovies[index];
                  return InkWell(
                    onTap: () {
                      /// TODO : NAVIGATE TO  MOVIE DETAILS
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl:
                                  ApiConstance.imageUrl(movie.backdropPath),
                              placeholder: (context, url) => Shimmer.fromColors(
                                baseColor: Colors.grey[850]!,
                                highlightColor: Colors.grey[800]!,
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 8.0),
                                  height: 170.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ListTile(
                            title: Text(movie.title,
                                style: GoogleFonts.poppins(letterSpacing: 0.9)),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 6.0),
                              child: Text(movie.overview,
                                  style:
                                      GoogleFonts.poppins(letterSpacing: 0.3)),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            );
          case RequestState.error:
            return SizedBox(
              height: 250.0,
              child: Center(
                child: Text(state.popularMessage),
              ),
            );
        }
      },
    );
  }
}
