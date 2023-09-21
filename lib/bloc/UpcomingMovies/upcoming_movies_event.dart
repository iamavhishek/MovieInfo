part of 'upcoming_movies_bloc.dart';

sealed class UpcomingMoviesEvent extends Equatable {
  const UpcomingMoviesEvent();

  @override
  List<Object> get props => [];
}

class LoadUpcomingMovieEvent extends UpcomingMoviesEvent {
  @override
  List<Object> get props => [];
}

class LoadMoreUpcomingMovieEvent extends UpcomingMoviesEvent {
  @override
  List<Object> get props => [];
}
