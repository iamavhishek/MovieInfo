import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieinfo/bloc/MovieCasts/movie_casts_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MovieDetailBloc(
            movieDetailRepository: MovieDetailRepository(),
          )..add(
              LoadMovieDetailEvent(
                movieId: widget.movieId,
              ),
            ),
        ),
        BlocProvider(
          create: (context) => MovieCastsBloc(
            movieDetailRepository: MovieDetailRepository(),
          )..add(
              LoadMovieCastsEvent(
                movieId: widget.movieId,
              ),
            ),
        ),
      ],
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
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
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
                                      "https://image.tmdb.org/t/p/original//${movieDetail.backdrop_path}"),
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
                          textAlign: TextAlign.center,
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
                        child: Text(
                            '${movieDetail.status} | ${movieDetail.release_date}'),
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
                        child: Text(
                          movieDetail.overview,
                          style: GoogleFonts.nunito(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Genre:',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 16, right: 16),
                        child: genreChip(
                          movieDetail.genres.asList(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Casts:',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: BlocBuilder<MovieCastsBloc, MovieCastsState>(
                          builder: (context, state) {
                            if (state is MovieCastsLoadingState) {
                              return const SizedBox(
                                height: 45,
                                width: 45,
                                child: Center(
                                  child:
                                      CircularProgressIndicator(strokeWidth: 5),
                                ),
                              );
                            } else if (state is MovieCastsLoadedState) {
                              List<MovieCast> movieCast = state.movieCasts;
                              return ListView.builder(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 16, right: 16),
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: movieCast.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) =>
                                              MovieDetailScreen(
                                                  movieId:
                                                      movieCast[index].id)),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.all(8),
                                      width: 75,
                                      child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: movieCast[index]
                                                            .profile_path ==
                                                        null
                                                    ? Container(
                                                        height: 115,
                                                        width: 75,
                                                        color: Colors.white,
                                                        child: Center(
                                                          child: Text(
                                                            "No Image",
                                                            style: GoogleFonts
                                                                .nunito(
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        ),
                                                      )
                                                    : Image.network(
                                                        'https://image.tmdb.org/t/p/w500//${movieCast[index].profile_path}'),
                                              ),
                                              Positioned(
                                                top: 4,
                                                left: 4,
                                                child: Container(
                                                  color: Colors.black,
                                                  child: movieCast[index].adult
                                                      ? const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Text(
                                                            '18+',
                                                            style: TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      96,
                                                                      47),
                                                            ),
                                                          ),
                                                        )
                                                      : const SizedBox(),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            movieCast[index].original_name,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.nunito(
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                  ;
                                },
                              );
                            } else {
                              return const Text("Error Occured");
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
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

  Widget genreChip(List<MovieGenre> genres) {
    List<String> genreList = [];

    for (var genre in genres) {
      genreList.add(genre.name);
    }
    return Wrap(
      spacing: 10,
      children: genreList
          .map(
            (genree) => Chip(
              label: Text(
                genree,
                style: GoogleFonts.nunito(fontSize: 12),
              ),
              elevation: 6,
            ),
          )
          .toList(),
    );
  }
}
