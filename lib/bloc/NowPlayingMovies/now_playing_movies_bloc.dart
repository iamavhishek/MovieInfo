import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movieinfo/model/movie_model.dart';
import 'package:movieinfo/repository/movie_repository.dart';

part 'now_playing_movies_event.dart';
part 'now_playing_movies_state.dart';

class NowPlayingMoviesBloc
    extends Bloc<NowPlayingMoviesEvent, NowPlayingMoviesState> {
  final MovieRepository movieRepository;

  NowPlayingMoviesBloc({required this.movieRepository})
      : super(NowPlayingMoviesInitial()) {
    on<LoadNowPlayingMovieEvent>((event, emit) async {
      emit(NowPlayingMoviesLoadingState());
      try {
        final movies = await movieRepository.getNowPlayingMovie();
        emit(NowPlayingMoviesLoadedState(movies.results.asList()));
      } catch (e) {
        emit(NowPlayingMoviesLoadingErrorState(error: e.toString()));
      }
    });
  }
}
