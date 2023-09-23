library serializers;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:movieinfo/model/movie_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  MovieInfo,
  TrendingMovies,
  TopRatedMovies,
  UpcomingMovies,
  NowPlayingMovies,
  MovieGenre,
  MovieDetail,
  MovieCredits,
  MovieCast
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MovieInfo)]),
        () => ListBuilder<MovieInfo>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TrendingMovies)]),
        () => ListBuilder<TrendingMovies>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TopRatedMovies)]),
        () => ListBuilder<TopRatedMovies>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UpcomingMovies)]),
        () => ListBuilder<UpcomingMovies>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(NowPlayingMovies)]),
        () => ListBuilder<NowPlayingMovies>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MovieGenre)]),
        () => ListBuilder<MovieGenre>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MovieDetail)]),
        () => ListBuilder<MovieDetail>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MovieCredits)]),
        () => ListBuilder<MovieCredits>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MovieCast)]),
        () => ListBuilder<MovieCast>(),
      )
      ..addPlugin(
        StandardJsonPlugin(),
      ))
    .build();

BuiltList<T> deserializeList<T>(String body) {
  final decodedBody = json.decode(body) as Iterable;
  final l = decodedBody.map<T>((value) {
    return serializers.deserialize(value, specifiedType: FullType(T))! as T;
  });
  return BuiltList.from(l.toList());
}
