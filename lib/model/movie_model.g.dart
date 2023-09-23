// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieInfo> _$movieInfoSerializer = new _$MovieInfoSerializer();
Serializer<TrendingMovies> _$trendingMoviesSerializer =
    new _$TrendingMoviesSerializer();
Serializer<TopRatedMovies> _$topRatedMoviesSerializer =
    new _$TopRatedMoviesSerializer();
Serializer<UpcomingMovies> _$upcomingMoviesSerializer =
    new _$UpcomingMoviesSerializer();
Serializer<NowPlayingMovies> _$nowPlayingMoviesSerializer =
    new _$NowPlayingMoviesSerializer();
Serializer<MovieGenre> _$movieGenreSerializer = new _$MovieGenreSerializer();
Serializer<MovieDetail> _$movieDetailSerializer = new _$MovieDetailSerializer();
Serializer<MovieCredits> _$movieCreditsSerializer =
    new _$MovieCreditsSerializer();
Serializer<MovieCast> _$movieCastSerializer = new _$MovieCastSerializer();

class _$MovieInfoSerializer implements StructuredSerializer<MovieInfo> {
  @override
  final Iterable<Type> types = const [MovieInfo, _$MovieInfo];
  @override
  final String wireName = 'MovieInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'backdrop_path',
      serializers.serialize(object.backdrop_path,
          specifiedType: const FullType(String)),
      'genre_ids',
      serializers.serialize(object.genre_ids,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'original_language',
      serializers.serialize(object.original_language,
          specifiedType: const FullType(String)),
      'original_title',
      serializers.serialize(object.original_title,
          specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'poster_path',
      serializers.serialize(object.poster_path,
          specifiedType: const FullType(String)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'release_date',
      serializers.serialize(object.release_date,
          specifiedType: const FullType(String)),
      'video',
      serializers.serialize(object.video, specifiedType: const FullType(bool)),
      'vote_average',
      serializers.serialize(object.vote_average,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.vote_count,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.media_type;
    if (value != null) {
      result
        ..add('media_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'backdrop_path':
          result.backdrop_path = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'genre_ids':
          result.genre_ids.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'original_language':
          result.original_language = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'original_title':
          result.original_title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'poster_path':
          result.poster_path = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'media_type':
          result.media_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'release_date':
          result.release_date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'vote_average':
          result.vote_average = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'vote_count':
          result.vote_count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TrendingMoviesSerializer
    implements StructuredSerializer<TrendingMovies> {
  @override
  final Iterable<Type> types = const [TrendingMovies, _$TrendingMovies];
  @override
  final String wireName = 'TrendingMovies';

  @override
  Iterable<Object?> serialize(Serializers serializers, TrendingMovies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MovieInfo)])),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'total_pages',
      serializers.serialize(object.total_pages,
          specifiedType: const FullType(int)),
      'total_results',
      serializers.serialize(object.total_results,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  TrendingMovies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrendingMoviesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total_pages':
          result.total_pages = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total_results':
          result.total_results = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TopRatedMoviesSerializer
    implements StructuredSerializer<TopRatedMovies> {
  @override
  final Iterable<Type> types = const [TopRatedMovies, _$TopRatedMovies];
  @override
  final String wireName = 'TopRatedMovies';

  @override
  Iterable<Object?> serialize(Serializers serializers, TopRatedMovies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MovieInfo)])),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'total_pages',
      serializers.serialize(object.total_pages,
          specifiedType: const FullType(int)),
      'total_results',
      serializers.serialize(object.total_results,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  TopRatedMovies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopRatedMoviesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total_pages':
          result.total_pages = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total_results':
          result.total_results = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UpcomingMoviesSerializer
    implements StructuredSerializer<UpcomingMovies> {
  @override
  final Iterable<Type> types = const [UpcomingMovies, _$UpcomingMovies];
  @override
  final String wireName = 'UpcomingMovies';

  @override
  Iterable<Object?> serialize(Serializers serializers, UpcomingMovies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MovieInfo)])),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'total_pages',
      serializers.serialize(object.total_pages,
          specifiedType: const FullType(int)),
      'total_results',
      serializers.serialize(object.total_results,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  UpcomingMovies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpcomingMoviesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total_pages':
          result.total_pages = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total_results':
          result.total_results = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NowPlayingMoviesSerializer
    implements StructuredSerializer<NowPlayingMovies> {
  @override
  final Iterable<Type> types = const [NowPlayingMovies, _$NowPlayingMovies];
  @override
  final String wireName = 'NowPlayingMovies';

  @override
  Iterable<Object?> serialize(Serializers serializers, NowPlayingMovies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MovieInfo)])),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'total_pages',
      serializers.serialize(object.total_pages,
          specifiedType: const FullType(int)),
      'total_results',
      serializers.serialize(object.total_results,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  NowPlayingMovies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NowPlayingMoviesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total_pages':
          result.total_pages = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total_results':
          result.total_results = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieGenreSerializer implements StructuredSerializer<MovieGenre> {
  @override
  final Iterable<Type> types = const [MovieGenre, _$MovieGenre];
  @override
  final String wireName = 'MovieGenre';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieGenre object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MovieGenre deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieGenreBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieDetailSerializer implements StructuredSerializer<MovieDetail> {
  @override
  final Iterable<Type> types = const [MovieDetail, _$MovieDetail];
  @override
  final String wireName = 'MovieDetail';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'backdrop_path',
      serializers.serialize(object.backdrop_path,
          specifiedType: const FullType(String)),
      'budget',
      serializers.serialize(object.budget,
          specifiedType: const FullType(double)),
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MovieGenre)])),
      'original_title',
      serializers.serialize(object.original_title,
          specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'release_date',
      serializers.serialize(object.release_date,
          specifiedType: const FullType(String)),
      'runtime',
      serializers.serialize(object.runtime,
          specifiedType: const FullType(double)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.poster_path;
    if (value != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieDetail deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'backdrop_path':
          result.backdrop_path = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieGenre)]))!
              as BuiltList<Object?>);
          break;
        case 'original_title':
          result.original_title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'release_date':
          result.release_date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'poster_path':
          result.poster_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieCreditsSerializer implements StructuredSerializer<MovieCredits> {
  @override
  final Iterable<Type> types = const [MovieCredits, _$MovieCredits];
  @override
  final String wireName = 'MovieCredits';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieCredits object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cast',
      serializers.serialize(object.cast,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MovieCast)])),
    ];

    return result;
  }

  @override
  MovieCredits deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieCreditsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cast':
          result.cast.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieCast)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$MovieCastSerializer implements StructuredSerializer<MovieCast> {
  @override
  final Iterable<Type> types = const [MovieCast, _$MovieCast];
  @override
  final String wireName = 'MovieCast';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieCast object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'gender',
      serializers.serialize(object.gender, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'known_for_department',
      serializers.serialize(object.known_for_department,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'original_name',
      serializers.serialize(object.original_name,
          specifiedType: const FullType(String)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'cast_id',
      serializers.serialize(object.cast_id, specifiedType: const FullType(int)),
      'character',
      serializers.serialize(object.character,
          specifiedType: const FullType(String)),
      'credit_id',
      serializers.serialize(object.credit_id,
          specifiedType: const FullType(String)),
      'order',
      serializers.serialize(object.order, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.profile_path;
    if (value != null) {
      result
        ..add('profile_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieCast deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieCastBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'known_for_department':
          result.known_for_department = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'original_name':
          result.original_name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'profile_path':
          result.profile_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cast_id':
          result.cast_id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'character':
          result.character = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'credit_id':
          result.credit_id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieInfo extends MovieInfo {
  @override
  final bool adult;
  @override
  final String backdrop_path;
  @override
  final BuiltList<int> genre_ids;
  @override
  final int id;
  @override
  final String title;
  @override
  final String original_language;
  @override
  final String original_title;
  @override
  final String overview;
  @override
  final String poster_path;
  @override
  final String? media_type;
  @override
  final double popularity;
  @override
  final String release_date;
  @override
  final bool video;
  @override
  final double vote_average;
  @override
  final int vote_count;

  factory _$MovieInfo([void Function(MovieInfoBuilder)? updates]) =>
      (new MovieInfoBuilder()..update(updates))._build();

  _$MovieInfo._(
      {required this.adult,
      required this.backdrop_path,
      required this.genre_ids,
      required this.id,
      required this.title,
      required this.original_language,
      required this.original_title,
      required this.overview,
      required this.poster_path,
      this.media_type,
      required this.popularity,
      required this.release_date,
      required this.video,
      required this.vote_average,
      required this.vote_count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adult, r'MovieInfo', 'adult');
    BuiltValueNullFieldError.checkNotNull(
        backdrop_path, r'MovieInfo', 'backdrop_path');
    BuiltValueNullFieldError.checkNotNull(genre_ids, r'MovieInfo', 'genre_ids');
    BuiltValueNullFieldError.checkNotNull(id, r'MovieInfo', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'MovieInfo', 'title');
    BuiltValueNullFieldError.checkNotNull(
        original_language, r'MovieInfo', 'original_language');
    BuiltValueNullFieldError.checkNotNull(
        original_title, r'MovieInfo', 'original_title');
    BuiltValueNullFieldError.checkNotNull(overview, r'MovieInfo', 'overview');
    BuiltValueNullFieldError.checkNotNull(
        poster_path, r'MovieInfo', 'poster_path');
    BuiltValueNullFieldError.checkNotNull(
        popularity, r'MovieInfo', 'popularity');
    BuiltValueNullFieldError.checkNotNull(
        release_date, r'MovieInfo', 'release_date');
    BuiltValueNullFieldError.checkNotNull(video, r'MovieInfo', 'video');
    BuiltValueNullFieldError.checkNotNull(
        vote_average, r'MovieInfo', 'vote_average');
    BuiltValueNullFieldError.checkNotNull(
        vote_count, r'MovieInfo', 'vote_count');
  }

  @override
  MovieInfo rebuild(void Function(MovieInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieInfoBuilder toBuilder() => new MovieInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieInfo &&
        adult == other.adult &&
        backdrop_path == other.backdrop_path &&
        genre_ids == other.genre_ids &&
        id == other.id &&
        title == other.title &&
        original_language == other.original_language &&
        original_title == other.original_title &&
        overview == other.overview &&
        poster_path == other.poster_path &&
        media_type == other.media_type &&
        popularity == other.popularity &&
        release_date == other.release_date &&
        video == other.video &&
        vote_average == other.vote_average &&
        vote_count == other.vote_count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, backdrop_path.hashCode);
    _$hash = $jc(_$hash, genre_ids.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, original_language.hashCode);
    _$hash = $jc(_$hash, original_title.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, poster_path.hashCode);
    _$hash = $jc(_$hash, media_type.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, release_date.hashCode);
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jc(_$hash, vote_average.hashCode);
    _$hash = $jc(_$hash, vote_count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieInfo')
          ..add('adult', adult)
          ..add('backdrop_path', backdrop_path)
          ..add('genre_ids', genre_ids)
          ..add('id', id)
          ..add('title', title)
          ..add('original_language', original_language)
          ..add('original_title', original_title)
          ..add('overview', overview)
          ..add('poster_path', poster_path)
          ..add('media_type', media_type)
          ..add('popularity', popularity)
          ..add('release_date', release_date)
          ..add('video', video)
          ..add('vote_average', vote_average)
          ..add('vote_count', vote_count))
        .toString();
  }
}

class MovieInfoBuilder implements Builder<MovieInfo, MovieInfoBuilder> {
  _$MovieInfo? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdrop_path;
  String? get backdrop_path => _$this._backdrop_path;
  set backdrop_path(String? backdrop_path) =>
      _$this._backdrop_path = backdrop_path;

  ListBuilder<int>? _genre_ids;
  ListBuilder<int> get genre_ids =>
      _$this._genre_ids ??= new ListBuilder<int>();
  set genre_ids(ListBuilder<int>? genre_ids) => _$this._genre_ids = genre_ids;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _original_language;
  String? get original_language => _$this._original_language;
  set original_language(String? original_language) =>
      _$this._original_language = original_language;

  String? _original_title;
  String? get original_title => _$this._original_title;
  set original_title(String? original_title) =>
      _$this._original_title = original_title;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  String? _poster_path;
  String? get poster_path => _$this._poster_path;
  set poster_path(String? poster_path) => _$this._poster_path = poster_path;

  String? _media_type;
  String? get media_type => _$this._media_type;
  set media_type(String? media_type) => _$this._media_type = media_type;

  double? _popularity;
  double? get popularity => _$this._popularity;
  set popularity(double? popularity) => _$this._popularity = popularity;

  String? _release_date;
  String? get release_date => _$this._release_date;
  set release_date(String? release_date) => _$this._release_date = release_date;

  bool? _video;
  bool? get video => _$this._video;
  set video(bool? video) => _$this._video = video;

  double? _vote_average;
  double? get vote_average => _$this._vote_average;
  set vote_average(double? vote_average) => _$this._vote_average = vote_average;

  int? _vote_count;
  int? get vote_count => _$this._vote_count;
  set vote_count(int? vote_count) => _$this._vote_count = vote_count;

  MovieInfoBuilder();

  MovieInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdrop_path = $v.backdrop_path;
      _genre_ids = $v.genre_ids.toBuilder();
      _id = $v.id;
      _title = $v.title;
      _original_language = $v.original_language;
      _original_title = $v.original_title;
      _overview = $v.overview;
      _poster_path = $v.poster_path;
      _media_type = $v.media_type;
      _popularity = $v.popularity;
      _release_date = $v.release_date;
      _video = $v.video;
      _vote_average = $v.vote_average;
      _vote_count = $v.vote_count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieInfo;
  }

  @override
  void update(void Function(MovieInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieInfo build() => _build();

  _$MovieInfo _build() {
    _$MovieInfo _$result;
    try {
      _$result = _$v ??
          new _$MovieInfo._(
              adult: BuiltValueNullFieldError.checkNotNull(
                  adult, r'MovieInfo', 'adult'),
              backdrop_path: BuiltValueNullFieldError.checkNotNull(
                  backdrop_path, r'MovieInfo', 'backdrop_path'),
              genre_ids: genre_ids.build(),
              id: BuiltValueNullFieldError.checkNotNull(id, r'MovieInfo', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'MovieInfo', 'title'),
              original_language: BuiltValueNullFieldError.checkNotNull(
                  original_language, r'MovieInfo', 'original_language'),
              original_title: BuiltValueNullFieldError.checkNotNull(
                  original_title, r'MovieInfo', 'original_title'),
              overview: BuiltValueNullFieldError.checkNotNull(
                  overview, r'MovieInfo', 'overview'),
              poster_path: BuiltValueNullFieldError.checkNotNull(
                  poster_path, r'MovieInfo', 'poster_path'),
              media_type: media_type,
              popularity: BuiltValueNullFieldError.checkNotNull(
                  popularity, r'MovieInfo', 'popularity'),
              release_date: BuiltValueNullFieldError.checkNotNull(
                  release_date, r'MovieInfo', 'release_date'),
              video: BuiltValueNullFieldError.checkNotNull(video, r'MovieInfo', 'video'),
              vote_average: BuiltValueNullFieldError.checkNotNull(vote_average, r'MovieInfo', 'vote_average'),
              vote_count: BuiltValueNullFieldError.checkNotNull(vote_count, r'MovieInfo', 'vote_count'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genre_ids';
        genre_ids.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MovieInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TrendingMovies extends TrendingMovies {
  @override
  final BuiltList<MovieInfo> results;
  @override
  final int page;
  @override
  final int total_pages;
  @override
  final int total_results;

  factory _$TrendingMovies([void Function(TrendingMoviesBuilder)? updates]) =>
      (new TrendingMoviesBuilder()..update(updates))._build();

  _$TrendingMovies._(
      {required this.results,
      required this.page,
      required this.total_pages,
      required this.total_results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        results, r'TrendingMovies', 'results');
    BuiltValueNullFieldError.checkNotNull(page, r'TrendingMovies', 'page');
    BuiltValueNullFieldError.checkNotNull(
        total_pages, r'TrendingMovies', 'total_pages');
    BuiltValueNullFieldError.checkNotNull(
        total_results, r'TrendingMovies', 'total_results');
  }

  @override
  TrendingMovies rebuild(void Function(TrendingMoviesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrendingMoviesBuilder toBuilder() =>
      new TrendingMoviesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendingMovies &&
        results == other.results &&
        page == other.page &&
        total_pages == other.total_pages &&
        total_results == other.total_results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, total_pages.hashCode);
    _$hash = $jc(_$hash, total_results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrendingMovies')
          ..add('results', results)
          ..add('page', page)
          ..add('total_pages', total_pages)
          ..add('total_results', total_results))
        .toString();
  }
}

class TrendingMoviesBuilder
    implements Builder<TrendingMovies, TrendingMoviesBuilder> {
  _$TrendingMovies? _$v;

  ListBuilder<MovieInfo>? _results;
  ListBuilder<MovieInfo> get results =>
      _$this._results ??= new ListBuilder<MovieInfo>();
  set results(ListBuilder<MovieInfo>? results) => _$this._results = results;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _total_pages;
  int? get total_pages => _$this._total_pages;
  set total_pages(int? total_pages) => _$this._total_pages = total_pages;

  int? _total_results;
  int? get total_results => _$this._total_results;
  set total_results(int? total_results) =>
      _$this._total_results = total_results;

  TrendingMoviesBuilder();

  TrendingMoviesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results.toBuilder();
      _page = $v.page;
      _total_pages = $v.total_pages;
      _total_results = $v.total_results;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendingMovies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrendingMovies;
  }

  @override
  void update(void Function(TrendingMoviesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrendingMovies build() => _build();

  _$TrendingMovies _build() {
    _$TrendingMovies _$result;
    try {
      _$result = _$v ??
          new _$TrendingMovies._(
              results: results.build(),
              page: BuiltValueNullFieldError.checkNotNull(
                  page, r'TrendingMovies', 'page'),
              total_pages: BuiltValueNullFieldError.checkNotNull(
                  total_pages, r'TrendingMovies', 'total_pages'),
              total_results: BuiltValueNullFieldError.checkNotNull(
                  total_results, r'TrendingMovies', 'total_results'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TrendingMovies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TopRatedMovies extends TopRatedMovies {
  @override
  final BuiltList<MovieInfo> results;
  @override
  final int page;
  @override
  final int total_pages;
  @override
  final int total_results;

  factory _$TopRatedMovies([void Function(TopRatedMoviesBuilder)? updates]) =>
      (new TopRatedMoviesBuilder()..update(updates))._build();

  _$TopRatedMovies._(
      {required this.results,
      required this.page,
      required this.total_pages,
      required this.total_results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        results, r'TopRatedMovies', 'results');
    BuiltValueNullFieldError.checkNotNull(page, r'TopRatedMovies', 'page');
    BuiltValueNullFieldError.checkNotNull(
        total_pages, r'TopRatedMovies', 'total_pages');
    BuiltValueNullFieldError.checkNotNull(
        total_results, r'TopRatedMovies', 'total_results');
  }

  @override
  TopRatedMovies rebuild(void Function(TopRatedMoviesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopRatedMoviesBuilder toBuilder() =>
      new TopRatedMoviesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopRatedMovies &&
        results == other.results &&
        page == other.page &&
        total_pages == other.total_pages &&
        total_results == other.total_results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, total_pages.hashCode);
    _$hash = $jc(_$hash, total_results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TopRatedMovies')
          ..add('results', results)
          ..add('page', page)
          ..add('total_pages', total_pages)
          ..add('total_results', total_results))
        .toString();
  }
}

class TopRatedMoviesBuilder
    implements Builder<TopRatedMovies, TopRatedMoviesBuilder> {
  _$TopRatedMovies? _$v;

  ListBuilder<MovieInfo>? _results;
  ListBuilder<MovieInfo> get results =>
      _$this._results ??= new ListBuilder<MovieInfo>();
  set results(ListBuilder<MovieInfo>? results) => _$this._results = results;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _total_pages;
  int? get total_pages => _$this._total_pages;
  set total_pages(int? total_pages) => _$this._total_pages = total_pages;

  int? _total_results;
  int? get total_results => _$this._total_results;
  set total_results(int? total_results) =>
      _$this._total_results = total_results;

  TopRatedMoviesBuilder();

  TopRatedMoviesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results.toBuilder();
      _page = $v.page;
      _total_pages = $v.total_pages;
      _total_results = $v.total_results;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopRatedMovies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TopRatedMovies;
  }

  @override
  void update(void Function(TopRatedMoviesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TopRatedMovies build() => _build();

  _$TopRatedMovies _build() {
    _$TopRatedMovies _$result;
    try {
      _$result = _$v ??
          new _$TopRatedMovies._(
              results: results.build(),
              page: BuiltValueNullFieldError.checkNotNull(
                  page, r'TopRatedMovies', 'page'),
              total_pages: BuiltValueNullFieldError.checkNotNull(
                  total_pages, r'TopRatedMovies', 'total_pages'),
              total_results: BuiltValueNullFieldError.checkNotNull(
                  total_results, r'TopRatedMovies', 'total_results'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TopRatedMovies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpcomingMovies extends UpcomingMovies {
  @override
  final BuiltList<MovieInfo> results;
  @override
  final int page;
  @override
  final int total_pages;
  @override
  final int total_results;

  factory _$UpcomingMovies([void Function(UpcomingMoviesBuilder)? updates]) =>
      (new UpcomingMoviesBuilder()..update(updates))._build();

  _$UpcomingMovies._(
      {required this.results,
      required this.page,
      required this.total_pages,
      required this.total_results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        results, r'UpcomingMovies', 'results');
    BuiltValueNullFieldError.checkNotNull(page, r'UpcomingMovies', 'page');
    BuiltValueNullFieldError.checkNotNull(
        total_pages, r'UpcomingMovies', 'total_pages');
    BuiltValueNullFieldError.checkNotNull(
        total_results, r'UpcomingMovies', 'total_results');
  }

  @override
  UpcomingMovies rebuild(void Function(UpcomingMoviesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpcomingMoviesBuilder toBuilder() =>
      new UpcomingMoviesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpcomingMovies &&
        results == other.results &&
        page == other.page &&
        total_pages == other.total_pages &&
        total_results == other.total_results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, total_pages.hashCode);
    _$hash = $jc(_$hash, total_results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpcomingMovies')
          ..add('results', results)
          ..add('page', page)
          ..add('total_pages', total_pages)
          ..add('total_results', total_results))
        .toString();
  }
}

class UpcomingMoviesBuilder
    implements Builder<UpcomingMovies, UpcomingMoviesBuilder> {
  _$UpcomingMovies? _$v;

  ListBuilder<MovieInfo>? _results;
  ListBuilder<MovieInfo> get results =>
      _$this._results ??= new ListBuilder<MovieInfo>();
  set results(ListBuilder<MovieInfo>? results) => _$this._results = results;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _total_pages;
  int? get total_pages => _$this._total_pages;
  set total_pages(int? total_pages) => _$this._total_pages = total_pages;

  int? _total_results;
  int? get total_results => _$this._total_results;
  set total_results(int? total_results) =>
      _$this._total_results = total_results;

  UpcomingMoviesBuilder();

  UpcomingMoviesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results.toBuilder();
      _page = $v.page;
      _total_pages = $v.total_pages;
      _total_results = $v.total_results;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpcomingMovies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpcomingMovies;
  }

  @override
  void update(void Function(UpcomingMoviesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpcomingMovies build() => _build();

  _$UpcomingMovies _build() {
    _$UpcomingMovies _$result;
    try {
      _$result = _$v ??
          new _$UpcomingMovies._(
              results: results.build(),
              page: BuiltValueNullFieldError.checkNotNull(
                  page, r'UpcomingMovies', 'page'),
              total_pages: BuiltValueNullFieldError.checkNotNull(
                  total_pages, r'UpcomingMovies', 'total_pages'),
              total_results: BuiltValueNullFieldError.checkNotNull(
                  total_results, r'UpcomingMovies', 'total_results'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpcomingMovies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NowPlayingMovies extends NowPlayingMovies {
  @override
  final BuiltList<MovieInfo> results;
  @override
  final int page;
  @override
  final int total_pages;
  @override
  final int total_results;

  factory _$NowPlayingMovies(
          [void Function(NowPlayingMoviesBuilder)? updates]) =>
      (new NowPlayingMoviesBuilder()..update(updates))._build();

  _$NowPlayingMovies._(
      {required this.results,
      required this.page,
      required this.total_pages,
      required this.total_results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        results, r'NowPlayingMovies', 'results');
    BuiltValueNullFieldError.checkNotNull(page, r'NowPlayingMovies', 'page');
    BuiltValueNullFieldError.checkNotNull(
        total_pages, r'NowPlayingMovies', 'total_pages');
    BuiltValueNullFieldError.checkNotNull(
        total_results, r'NowPlayingMovies', 'total_results');
  }

  @override
  NowPlayingMovies rebuild(void Function(NowPlayingMoviesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NowPlayingMoviesBuilder toBuilder() =>
      new NowPlayingMoviesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NowPlayingMovies &&
        results == other.results &&
        page == other.page &&
        total_pages == other.total_pages &&
        total_results == other.total_results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, total_pages.hashCode);
    _$hash = $jc(_$hash, total_results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NowPlayingMovies')
          ..add('results', results)
          ..add('page', page)
          ..add('total_pages', total_pages)
          ..add('total_results', total_results))
        .toString();
  }
}

class NowPlayingMoviesBuilder
    implements Builder<NowPlayingMovies, NowPlayingMoviesBuilder> {
  _$NowPlayingMovies? _$v;

  ListBuilder<MovieInfo>? _results;
  ListBuilder<MovieInfo> get results =>
      _$this._results ??= new ListBuilder<MovieInfo>();
  set results(ListBuilder<MovieInfo>? results) => _$this._results = results;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _total_pages;
  int? get total_pages => _$this._total_pages;
  set total_pages(int? total_pages) => _$this._total_pages = total_pages;

  int? _total_results;
  int? get total_results => _$this._total_results;
  set total_results(int? total_results) =>
      _$this._total_results = total_results;

  NowPlayingMoviesBuilder();

  NowPlayingMoviesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results.toBuilder();
      _page = $v.page;
      _total_pages = $v.total_pages;
      _total_results = $v.total_results;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NowPlayingMovies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NowPlayingMovies;
  }

  @override
  void update(void Function(NowPlayingMoviesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NowPlayingMovies build() => _build();

  _$NowPlayingMovies _build() {
    _$NowPlayingMovies _$result;
    try {
      _$result = _$v ??
          new _$NowPlayingMovies._(
              results: results.build(),
              page: BuiltValueNullFieldError.checkNotNull(
                  page, r'NowPlayingMovies', 'page'),
              total_pages: BuiltValueNullFieldError.checkNotNull(
                  total_pages, r'NowPlayingMovies', 'total_pages'),
              total_results: BuiltValueNullFieldError.checkNotNull(
                  total_results, r'NowPlayingMovies', 'total_results'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NowPlayingMovies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MovieGenre extends MovieGenre {
  @override
  final int id;
  @override
  final String name;

  factory _$MovieGenre([void Function(MovieGenreBuilder)? updates]) =>
      (new MovieGenreBuilder()..update(updates))._build();

  _$MovieGenre._({required this.id, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'MovieGenre', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'MovieGenre', 'name');
  }

  @override
  MovieGenre rebuild(void Function(MovieGenreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieGenreBuilder toBuilder() => new MovieGenreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieGenre && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieGenre')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class MovieGenreBuilder implements Builder<MovieGenre, MovieGenreBuilder> {
  _$MovieGenre? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MovieGenreBuilder();

  MovieGenreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieGenre other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieGenre;
  }

  @override
  void update(void Function(MovieGenreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieGenre build() => _build();

  _$MovieGenre _build() {
    final _$result = _$v ??
        new _$MovieGenre._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'MovieGenre', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'MovieGenre', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$MovieDetail extends MovieDetail {
  @override
  final bool adult;
  @override
  final String backdrop_path;
  @override
  final double budget;
  @override
  final BuiltList<MovieGenre> genres;
  @override
  final String original_title;
  @override
  final String overview;
  @override
  final String release_date;
  @override
  final double runtime;
  @override
  final String status;
  @override
  final String? rating;
  @override
  final String? poster_path;

  factory _$MovieDetail([void Function(MovieDetailBuilder)? updates]) =>
      (new MovieDetailBuilder()..update(updates))._build();

  _$MovieDetail._(
      {required this.adult,
      required this.backdrop_path,
      required this.budget,
      required this.genres,
      required this.original_title,
      required this.overview,
      required this.release_date,
      required this.runtime,
      required this.status,
      this.rating,
      this.poster_path})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adult, r'MovieDetail', 'adult');
    BuiltValueNullFieldError.checkNotNull(
        backdrop_path, r'MovieDetail', 'backdrop_path');
    BuiltValueNullFieldError.checkNotNull(budget, r'MovieDetail', 'budget');
    BuiltValueNullFieldError.checkNotNull(genres, r'MovieDetail', 'genres');
    BuiltValueNullFieldError.checkNotNull(
        original_title, r'MovieDetail', 'original_title');
    BuiltValueNullFieldError.checkNotNull(overview, r'MovieDetail', 'overview');
    BuiltValueNullFieldError.checkNotNull(
        release_date, r'MovieDetail', 'release_date');
    BuiltValueNullFieldError.checkNotNull(runtime, r'MovieDetail', 'runtime');
    BuiltValueNullFieldError.checkNotNull(status, r'MovieDetail', 'status');
  }

  @override
  MovieDetail rebuild(void Function(MovieDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieDetailBuilder toBuilder() => new MovieDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieDetail &&
        adult == other.adult &&
        backdrop_path == other.backdrop_path &&
        budget == other.budget &&
        genres == other.genres &&
        original_title == other.original_title &&
        overview == other.overview &&
        release_date == other.release_date &&
        runtime == other.runtime &&
        status == other.status &&
        rating == other.rating &&
        poster_path == other.poster_path;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, backdrop_path.hashCode);
    _$hash = $jc(_$hash, budget.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, original_title.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, release_date.hashCode);
    _$hash = $jc(_$hash, runtime.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, poster_path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieDetail')
          ..add('adult', adult)
          ..add('backdrop_path', backdrop_path)
          ..add('budget', budget)
          ..add('genres', genres)
          ..add('original_title', original_title)
          ..add('overview', overview)
          ..add('release_date', release_date)
          ..add('runtime', runtime)
          ..add('status', status)
          ..add('rating', rating)
          ..add('poster_path', poster_path))
        .toString();
  }
}

class MovieDetailBuilder implements Builder<MovieDetail, MovieDetailBuilder> {
  _$MovieDetail? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdrop_path;
  String? get backdrop_path => _$this._backdrop_path;
  set backdrop_path(String? backdrop_path) =>
      _$this._backdrop_path = backdrop_path;

  double? _budget;
  double? get budget => _$this._budget;
  set budget(double? budget) => _$this._budget = budget;

  ListBuilder<MovieGenre>? _genres;
  ListBuilder<MovieGenre> get genres =>
      _$this._genres ??= new ListBuilder<MovieGenre>();
  set genres(ListBuilder<MovieGenre>? genres) => _$this._genres = genres;

  String? _original_title;
  String? get original_title => _$this._original_title;
  set original_title(String? original_title) =>
      _$this._original_title = original_title;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  String? _release_date;
  String? get release_date => _$this._release_date;
  set release_date(String? release_date) => _$this._release_date = release_date;

  double? _runtime;
  double? get runtime => _$this._runtime;
  set runtime(double? runtime) => _$this._runtime = runtime;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _rating;
  String? get rating => _$this._rating;
  set rating(String? rating) => _$this._rating = rating;

  String? _poster_path;
  String? get poster_path => _$this._poster_path;
  set poster_path(String? poster_path) => _$this._poster_path = poster_path;

  MovieDetailBuilder();

  MovieDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdrop_path = $v.backdrop_path;
      _budget = $v.budget;
      _genres = $v.genres.toBuilder();
      _original_title = $v.original_title;
      _overview = $v.overview;
      _release_date = $v.release_date;
      _runtime = $v.runtime;
      _status = $v.status;
      _rating = $v.rating;
      _poster_path = $v.poster_path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieDetail;
  }

  @override
  void update(void Function(MovieDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieDetail build() => _build();

  _$MovieDetail _build() {
    _$MovieDetail _$result;
    try {
      _$result = _$v ??
          new _$MovieDetail._(
              adult: BuiltValueNullFieldError.checkNotNull(
                  adult, r'MovieDetail', 'adult'),
              backdrop_path: BuiltValueNullFieldError.checkNotNull(
                  backdrop_path, r'MovieDetail', 'backdrop_path'),
              budget: BuiltValueNullFieldError.checkNotNull(
                  budget, r'MovieDetail', 'budget'),
              genres: genres.build(),
              original_title: BuiltValueNullFieldError.checkNotNull(
                  original_title, r'MovieDetail', 'original_title'),
              overview: BuiltValueNullFieldError.checkNotNull(
                  overview, r'MovieDetail', 'overview'),
              release_date: BuiltValueNullFieldError.checkNotNull(
                  release_date, r'MovieDetail', 'release_date'),
              runtime: BuiltValueNullFieldError.checkNotNull(
                  runtime, r'MovieDetail', 'runtime'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'MovieDetail', 'status'),
              rating: rating,
              poster_path: poster_path);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MovieDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MovieCredits extends MovieCredits {
  @override
  final BuiltList<MovieCast> cast;

  factory _$MovieCredits([void Function(MovieCreditsBuilder)? updates]) =>
      (new MovieCreditsBuilder()..update(updates))._build();

  _$MovieCredits._({required this.cast}) : super._() {
    BuiltValueNullFieldError.checkNotNull(cast, r'MovieCredits', 'cast');
  }

  @override
  MovieCredits rebuild(void Function(MovieCreditsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieCreditsBuilder toBuilder() => new MovieCreditsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieCredits && cast == other.cast;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cast.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieCredits')..add('cast', cast))
        .toString();
  }
}

class MovieCreditsBuilder
    implements Builder<MovieCredits, MovieCreditsBuilder> {
  _$MovieCredits? _$v;

  ListBuilder<MovieCast>? _cast;
  ListBuilder<MovieCast> get cast =>
      _$this._cast ??= new ListBuilder<MovieCast>();
  set cast(ListBuilder<MovieCast>? cast) => _$this._cast = cast;

  MovieCreditsBuilder();

  MovieCreditsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cast = $v.cast.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieCredits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieCredits;
  }

  @override
  void update(void Function(MovieCreditsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieCredits build() => _build();

  _$MovieCredits _build() {
    _$MovieCredits _$result;
    try {
      _$result = _$v ?? new _$MovieCredits._(cast: cast.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cast';
        cast.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MovieCredits', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MovieCast extends MovieCast {
  @override
  final bool adult;
  @override
  final int gender;
  @override
  final int id;
  @override
  final String known_for_department;
  @override
  final String name;
  @override
  final String original_name;
  @override
  final double popularity;
  @override
  final String? profile_path;
  @override
  final int cast_id;
  @override
  final String character;
  @override
  final String credit_id;
  @override
  final int order;

  factory _$MovieCast([void Function(MovieCastBuilder)? updates]) =>
      (new MovieCastBuilder()..update(updates))._build();

  _$MovieCast._(
      {required this.adult,
      required this.gender,
      required this.id,
      required this.known_for_department,
      required this.name,
      required this.original_name,
      required this.popularity,
      this.profile_path,
      required this.cast_id,
      required this.character,
      required this.credit_id,
      required this.order})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adult, r'MovieCast', 'adult');
    BuiltValueNullFieldError.checkNotNull(gender, r'MovieCast', 'gender');
    BuiltValueNullFieldError.checkNotNull(id, r'MovieCast', 'id');
    BuiltValueNullFieldError.checkNotNull(
        known_for_department, r'MovieCast', 'known_for_department');
    BuiltValueNullFieldError.checkNotNull(name, r'MovieCast', 'name');
    BuiltValueNullFieldError.checkNotNull(
        original_name, r'MovieCast', 'original_name');
    BuiltValueNullFieldError.checkNotNull(
        popularity, r'MovieCast', 'popularity');
    BuiltValueNullFieldError.checkNotNull(cast_id, r'MovieCast', 'cast_id');
    BuiltValueNullFieldError.checkNotNull(character, r'MovieCast', 'character');
    BuiltValueNullFieldError.checkNotNull(credit_id, r'MovieCast', 'credit_id');
    BuiltValueNullFieldError.checkNotNull(order, r'MovieCast', 'order');
  }

  @override
  MovieCast rebuild(void Function(MovieCastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieCastBuilder toBuilder() => new MovieCastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieCast &&
        adult == other.adult &&
        gender == other.gender &&
        id == other.id &&
        known_for_department == other.known_for_department &&
        name == other.name &&
        original_name == other.original_name &&
        popularity == other.popularity &&
        profile_path == other.profile_path &&
        cast_id == other.cast_id &&
        character == other.character &&
        credit_id == other.credit_id &&
        order == other.order;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, known_for_department.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, original_name.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, profile_path.hashCode);
    _$hash = $jc(_$hash, cast_id.hashCode);
    _$hash = $jc(_$hash, character.hashCode);
    _$hash = $jc(_$hash, credit_id.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieCast')
          ..add('adult', adult)
          ..add('gender', gender)
          ..add('id', id)
          ..add('known_for_department', known_for_department)
          ..add('name', name)
          ..add('original_name', original_name)
          ..add('popularity', popularity)
          ..add('profile_path', profile_path)
          ..add('cast_id', cast_id)
          ..add('character', character)
          ..add('credit_id', credit_id)
          ..add('order', order))
        .toString();
  }
}

class MovieCastBuilder implements Builder<MovieCast, MovieCastBuilder> {
  _$MovieCast? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  int? _gender;
  int? get gender => _$this._gender;
  set gender(int? gender) => _$this._gender = gender;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _known_for_department;
  String? get known_for_department => _$this._known_for_department;
  set known_for_department(String? known_for_department) =>
      _$this._known_for_department = known_for_department;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _original_name;
  String? get original_name => _$this._original_name;
  set original_name(String? original_name) =>
      _$this._original_name = original_name;

  double? _popularity;
  double? get popularity => _$this._popularity;
  set popularity(double? popularity) => _$this._popularity = popularity;

  String? _profile_path;
  String? get profile_path => _$this._profile_path;
  set profile_path(String? profile_path) => _$this._profile_path = profile_path;

  int? _cast_id;
  int? get cast_id => _$this._cast_id;
  set cast_id(int? cast_id) => _$this._cast_id = cast_id;

  String? _character;
  String? get character => _$this._character;
  set character(String? character) => _$this._character = character;

  String? _credit_id;
  String? get credit_id => _$this._credit_id;
  set credit_id(String? credit_id) => _$this._credit_id = credit_id;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  MovieCastBuilder();

  MovieCastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _gender = $v.gender;
      _id = $v.id;
      _known_for_department = $v.known_for_department;
      _name = $v.name;
      _original_name = $v.original_name;
      _popularity = $v.popularity;
      _profile_path = $v.profile_path;
      _cast_id = $v.cast_id;
      _character = $v.character;
      _credit_id = $v.credit_id;
      _order = $v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieCast other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieCast;
  }

  @override
  void update(void Function(MovieCastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieCast build() => _build();

  _$MovieCast _build() {
    final _$result = _$v ??
        new _$MovieCast._(
            adult: BuiltValueNullFieldError.checkNotNull(
                adult, r'MovieCast', 'adult'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'MovieCast', 'gender'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'MovieCast', 'id'),
            known_for_department: BuiltValueNullFieldError.checkNotNull(
                known_for_department, r'MovieCast', 'known_for_department'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'MovieCast', 'name'),
            original_name: BuiltValueNullFieldError.checkNotNull(
                original_name, r'MovieCast', 'original_name'),
            popularity: BuiltValueNullFieldError.checkNotNull(
                popularity, r'MovieCast', 'popularity'),
            profile_path: profile_path,
            cast_id: BuiltValueNullFieldError.checkNotNull(
                cast_id, r'MovieCast', 'cast_id'),
            character: BuiltValueNullFieldError.checkNotNull(
                character, r'MovieCast', 'character'),
            credit_id: BuiltValueNullFieldError.checkNotNull(
                credit_id, r'MovieCast', 'credit_id'),
            order: BuiltValueNullFieldError.checkNotNull(
                order, r'MovieCast', 'order'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
