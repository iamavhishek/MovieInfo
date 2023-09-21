import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movieinfo/model/movie_model.dart';
import 'package:movieinfo/repository/movie_detail_repository.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final MovieDetailRepository movieDetailRepository;
  MovieDetailBloc({required this.movieDetailRepository})
      : super(MovieDetailInitial()) {
    on<LoadMovieDetailEvent>((event, emit) async {
      emit(MovieDetailLoadingState());
      try {
        final movieDetail =
            await movieDetailRepository.getMovieDetail(event.movieId);
        emit(MovieDetailLoadedState(movieDetail: movieDetail));
      } catch (e) {
        emit(MovieDetailLoadingFailedState(error: e.toString()));
      }
    });
  }
}
