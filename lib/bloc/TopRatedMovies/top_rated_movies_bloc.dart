import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movieinfo/model/movie_model.dart';
import 'package:movieinfo/repository/movie_repository.dart';

part 'top_rated_movies_event.dart';
part 'top_rated_movies_state.dart';

class TopRatedMoviesBloc
    extends Bloc<TopRatedMoviesEvent, TopRatedMoviesState> {
  final MovieRepository movieRepository;
  TopRatedMoviesBloc({required this.movieRepository})
      : super(TopRatedMoviesInitial()) {
    on<LoadTopRatedMovieEvent>((event, emit) async {
      emit(TopRatedMoviesLoadingState());
      try {
        final movies = await movieRepository.getTopRatedMovie();
        emit(TopRatedMoviesLoadedState(movies.results.asList()));
      } catch (e) {
        emit(TopRatedMoviesLoadingErrorState(error: e.toString()));
      }
    });
  }
}
