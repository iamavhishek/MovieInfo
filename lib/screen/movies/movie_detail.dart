import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieinfo/bloc/MovieDetail/movie_detail_bloc.dart';
import 'package:movieinfo/model/movie_model.dart';
import 'package:movieinfo/repository/movie_detail_repository.dart';

class MovieDetailScreen extends StatefulWidget {
  final int movieId;
  const MovieDetailScreen({required this.movieId, super.key});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieDetailBloc(
        movieDetailRepository: MovieDetailRepository(),
      )..add(LoadMovieDetailEvent(movieId: widget.movieId)),
      child: BlocBuilder<MovieDetailBloc, MovieDetailState>(
        builder: (context, state) {
          if (state is MovieDetailLoadingState) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state is MovieDetailLoadedState) {
            MovieDetail movieDetail = state.movieDetail;
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                elevation: 0,
                title: Text(movieDetail.original_title),
              ),
              body: Container(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://image.tmdb.org/t/p/original${movieDetail.backdrop_path}"),
                                fit: BoxFit.cover),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: const SizedBox(
                              height: 200,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 80),
                          child: SizedBox(
                            height: 250,
                            child: Image.network(
                                "https://image.tmdb.org/t/p/original${movieDetail.poster_path}"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        movieDetail.original_title,
                        style: GoogleFonts.nunito(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(movieDetail.release_date),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Summary:',
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: 16, right: 16),
                      child: Text(movieDetail.overview,
                          style: GoogleFonts.nunito()),
                    )
                  ],
                ),
              ),
            );
          } else if (state is MovieDetailLoadingFailedState) {
            return Scaffold(
              body: Center(
                child: Text(state.error),
              ),
            );
          } else {
            return const Scaffold(
              body: Center(
                child: Text('Something went wrong'),
              ),
            );
          }
        },
      ),
    );
  }
}
