import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movieinfo/model/movie_model.dart';
import 'package:movieinfo/repository/movie_detail_repository.dart';

part 'movie_casts_event.dart';
part 'movie_casts_state.dart';

class MovieCastsBloc extends Bloc<MovieCastsEvent, MovieCastsState> {
  final MovieDetailRepository movieDetailRepository;
  MovieCastsBloc({required this.movieDetailRepository})
      : super(MovieCastsInitial()) {
    on<LoadMovieCastsEvent>((event, emit) async {
      emit(MovieCastsLoadingState());
      try {
        final movieCast =
            await movieDetailRepository.getMovieCasts(event.movieId);
        emit(MovieCastsLoadedState(movieCasts: movieCast.cast.asList()));
      } catch (e) {
        print(e);
        emit(MovieCastsLoadingFailedState(error: e.toString()));
      }
    });
  }
}
