part of 'upcoming_movies_bloc.dart';

sealed class UpcomingMoviesState extends Equatable {
  const UpcomingMoviesState();

  @override
  List<Object> get props => [];
}

final class UpcomingMoviesInitial extends UpcomingMoviesState {}

final class UpcomingMoviesLoadingState extends UpcomingMoviesState {}

final class UpcomingMoviesLoadedState extends UpcomingMoviesState {
  final List<MovieInfo> upcomingMovies;
  const UpcomingMoviesLoadedState(this.upcomingMovies);
}

final class UpcomingMoviesLoadingErrorState extends UpcomingMoviesState {
  final String error;
  const UpcomingMoviesLoadingErrorState({required this.error});
}
