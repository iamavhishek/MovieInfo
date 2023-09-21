import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movieinfo/repository/movie_repository.dart';
import 'package:movieinfo/model/movie_model.dart';
part 'trending_movies_event.dart';
part 'trending_movies_state.dart';

class TrendingMoviesBloc
    extends Bloc<TrendingMoviesEvent, TrendingMoviesState> {
  final MovieRepository movieRepository;
  TrendingMoviesBloc({required this.movieRepository})
      : super(TrendingMoviesInitial()) {
    on<LoadTrendingMovieEvent>((event, emit) async {
      emit(TrendingMoviesLoadingState());
      try {
        final movies = await movieRepository.getTrendingMovie();
        emit(TrendingMoviesLoadedState(movies.results.asList()));
      } catch (e) {
        emit(TrendingMoviesLoadingErrorState(error: e.toString()));
      }
    });
  }
}
