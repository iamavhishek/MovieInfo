library movie_model;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'movie_model.g.dart';

abstract class MovieInfo implements Built<MovieInfo, MovieInfoBuilder> {
  bool get adult;
  String get backdrop_path;
  BuiltList<int> get genre_ids;
  int get id;
  String get title;
  String get original_language;
  String get original_title;
  String get overview;
  String get poster_path;
  String? get media_type;
  double get popularity;
  String get release_date;
  bool get video;
  double get vote_average;
  int get vote_count;

  MovieInfo._();

  factory MovieInfo([Function(MovieInfoBuilder b) updates]) = _$MovieInfo;

  static Serializer<MovieInfo> get serializer => _$movieInfoSerializer;
}

abstract class TrendingMovies
    implements Built<TrendingMovies, TrendingMoviesBuilder> {
  BuiltList<MovieInfo> get results;
  int get page;
  int get total_pages;
  int get total_results;

  TrendingMovies._();

  factory TrendingMovies([Function(TrendingMoviesBuilder b) updates]) =
      _$TrendingMovies;

  static Serializer<TrendingMovies> get serializer =>
      _$trendingMoviesSerializer;
}

abstract class TopRatedMovies
    implements Built<TopRatedMovies, TopRatedMoviesBuilder> {
  BuiltList<MovieInfo> get results;
  int get page;
  int get total_pages;
  int get total_results;

  TopRatedMovies._();

  factory TopRatedMovies([Function(TopRatedMoviesBuilder b) updates]) =
      _$TopRatedMovies;

  static Serializer<TopRatedMovies> get serializer =>
      _$topRatedMoviesSerializer;
}

abstract class UpcomingMovies
    implements Built<UpcomingMovies, UpcomingMoviesBuilder> {
  BuiltList<MovieInfo> get results;
  int get page;
  int get total_pages;
  int get total_results;

  UpcomingMovies._();

  factory UpcomingMovies([Function(UpcomingMoviesBuilder b) updates]) =
      _$UpcomingMovies;

  static Serializer<UpcomingMovies> get serializer =>
      _$upcomingMoviesSerializer;
}

abstract class NowPlayingMovies
    implements Built<NowPlayingMovies, NowPlayingMoviesBuilder> {
  BuiltList<MovieInfo> get results;
  int get page;
  int get total_pages;
  int get total_results;

  NowPlayingMovies._();

  factory NowPlayingMovies([Function(NowPlayingMoviesBuilder b) updates]) =
      _$NowPlayingMovies;

  static Serializer<NowPlayingMovies> get serializer =>
      _$nowPlayingMoviesSerializer;
}

abstract class MovieGenre implements Built<MovieGenre, MovieGenreBuilder> {
  int get id;
  String get name;

  MovieGenre._();

  factory MovieGenre([Function(MovieGenreBuilder b) updates]) = _$MovieGenre;

  static Serializer<MovieGenre> get serializer => _$movieGenreSerializer;
}

abstract class MovieDetail implements Built<MovieDetail, MovieDetailBuilder> {
  bool get adult;
  String get backdrop_path;
  double get budget;
  BuiltList<MovieGenre> get genres;
  String get original_title;
  String get overview;
  String get release_date;
  double get runtime;
  String get status;
  String? get rating;
  String? get poster_path;

  MovieDetail._();

  factory MovieDetail([Function(MovieDetailBuilder b) updates]) = _$MovieDetail;

  static Serializer<MovieDetail> get serializer => _$movieDetailSerializer;
}

abstract class MovieCredits
    implements Built<MovieCredits, MovieCreditsBuilder> {
  BuiltList<MovieCast> get cast;

  MovieCredits._();

  factory MovieCredits([Function(MovieCreditsBuilder b) updates]) =
      _$MovieCredits;

  static Serializer<MovieCredits> get serializer => _$movieCreditsSerializer;
}

abstract class MovieCast implements Built<MovieCast, MovieCastBuilder> {
  bool get adult;
  int get gender;
  int get id;
  String get known_for_department;
  String get name;
  String get original_name;
  double get popularity;
  String? get profile_path;
  int get cast_id;
  String get character;
  String get credit_id;
  int get order;

  MovieCast._();

  factory MovieCast([Function(MovieCastBuilder b) updates]) = _$MovieCast;

  static Serializer<MovieCast> get serializer => _$movieCastSerializer;
}
