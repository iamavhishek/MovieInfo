part of 'trending_movies_bloc.dart';

sealed class TrendingMoviesState extends Equatable {
  const TrendingMoviesState();

  @override
  List<Object> get props => [];
}

final class TrendingMoviesInitial extends TrendingMoviesState {}

final class TrendingMoviesLoadingState extends TrendingMoviesState {}

final class TrendingMoviesLoadedState extends TrendingMoviesState {
  final List<MovieInfo> trendingMovies;
  const TrendingMoviesLoadedState(this.trendingMovies);
}

final class TrendingMoviesLoadingErrorState extends TrendingMoviesState {
  final String error;
  const TrendingMoviesLoadingErrorState({required this.error});
}
