part of 'top_rated_movies_bloc.dart';

sealed class TopRatedMoviesState extends Equatable {
  const TopRatedMoviesState();

  @override
  List<Object> get props => [];
}

final class TopRatedMoviesInitial extends TopRatedMoviesState {}

final class TopRatedMoviesLoadingState extends TopRatedMoviesState {}

final class TopRatedMoviesLoadedState extends TopRatedMoviesState {
  final List<MovieInfo> topRatedMovies;
  const TopRatedMoviesLoadedState(this.topRatedMovies);
}

final class TopRatedMoviesLoadingErrorState extends TopRatedMoviesState {
  final String error;
  const TopRatedMoviesLoadingErrorState({required this.error});
}
