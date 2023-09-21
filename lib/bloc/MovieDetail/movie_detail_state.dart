part of 'movie_detail_bloc.dart';

sealed class MovieDetailState extends Equatable {
  const MovieDetailState();

  @override
  List<Object> get props => [];
}

final class MovieDetailInitial extends MovieDetailState {}

final class MovieDetailLoadingState extends MovieDetailState {}

final class MovieDetailLoadedState extends MovieDetailState {
  final MovieDetail movieDetail;
  const MovieDetailLoadedState({required this.movieDetail});

  @override
  List<Object> get props => [movieDetail];
}

final class MovieDetailLoadingFailedState extends MovieDetailState {
  final String error;
  const MovieDetailLoadingFailedState({required this.error});

  @override
  List<Object> get props => [error];
}
