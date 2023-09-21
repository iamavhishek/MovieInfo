import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
