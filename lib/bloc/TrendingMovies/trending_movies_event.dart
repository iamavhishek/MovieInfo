part of 'trending_movies_bloc.dart';

sealed class TrendingMoviesEvent extends Equatable {
  const TrendingMoviesEvent();

  @override
  List<Object> get props => [];
}

class LoadTrendingMovieEvent extends TrendingMoviesEvent {
  @override
  List<Object> get props => [];
}

class LoadMoreTrendingMovieEvent extends TrendingMoviesEvent {
  @override
  List<Object> get props => [];
}
