part of 'now_playing_movies_bloc.dart';

sealed class NowPlayingMoviesState extends Equatable {
  const NowPlayingMoviesState();

  @override
  List<Object> get props => [];
}

final class NowPlayingMoviesInitial extends NowPlayingMoviesState {}

final class NowPlayingMoviesLoadingState extends NowPlayingMoviesState {}

final class NowPlayingMoviesLoadedState extends NowPlayingMoviesState {
  final List<MovieInfo> nowPlayingMovies;
  const NowPlayingMoviesLoadedState(this.nowPlayingMovies);
}

final class NowPlayingMoviesLoadingErrorState extends NowPlayingMoviesState {
  final String error;
  const NowPlayingMoviesLoadingErrorState({required this.error});
}
