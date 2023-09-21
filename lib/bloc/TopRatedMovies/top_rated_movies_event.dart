part of 'top_rated_movies_bloc.dart';

sealed class TopRatedMoviesEvent extends Equatable {
  const TopRatedMoviesEvent();

  @override
  List<Object> get props => [];
}

class LoadTopRatedMovieEvent extends TopRatedMoviesEvent {
  @override
  List<Object> get props => [];
}

class LoadMoreTopRatedMovieEvent extends TopRatedMoviesEvent {
  @override
  List<Object> get props => [];
}
