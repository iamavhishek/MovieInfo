part of 'movie_casts_bloc.dart';

sealed class MovieCastsState extends Equatable {
  const MovieCastsState();

  @override
  List<Object> get props => [];
}

final class MovieCastsInitial extends MovieCastsState {}

final class MovieCastsLoadingState extends MovieCastsState {}

final class MovieCastsLoadedState extends MovieCastsState {
  final List<MovieCast> movieCasts;
  const MovieCastsLoadedState({required this.movieCasts});

  @override
  List<Object> get props => [movieCasts];
}

final class MovieCastsLoadingFailedState extends MovieCastsState {
  final String error;
  const MovieCastsLoadingFailedState({required this.error});

  @override
  List<Object> get props => [error];
}
