import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movieinfo/model/movie_model.dart';
import 'package:movieinfo/repository/movie_repository.dart';

part 'upcoming_movies_event.dart';
part 'upcoming_movies_state.dart';

class UpcomingMoviesBloc
    extends Bloc<UpcomingMoviesEvent, UpcomingMoviesState> {
  final MovieRepository movieRepository;

  UpcomingMoviesBloc({required this.movieRepository})
      : super(UpcomingMoviesInitial()) {
    on<LoadUpcomingMovieEvent>((event, emit) async {
      emit(UpcomingMoviesLoadingState());
      try {
        final movies = await movieRepository.getUpcomingMovie();
        emit(UpcomingMoviesLoadedState(movies.results.asList()));
      } catch (e) {
        emit(UpcomingMoviesLoadingErrorState(error: e.toString()));
      }
    });
  }
}
