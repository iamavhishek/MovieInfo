part of 'movie_casts_bloc.dart';

sealed class MovieCastsEvent extends Equatable {
  const MovieCastsEvent();

  @override
  List<Object> get props => [];
}

class LoadMovieCastsEvent extends MovieCastsEvent {
  final int movieId;
  const LoadMovieCastsEvent({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
