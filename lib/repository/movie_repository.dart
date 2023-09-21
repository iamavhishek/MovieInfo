import 'dart:convert';
import 'package:movieinfo/model/movie_model.dart';
import 'package:http/http.dart' as http;
import 'package:movieinfo/model/serializers.dart';

class MovieRepository {
  static String apiKey = '45cc8d3a70440c9f41ee4440be6e81e0';
  static String mainUrl = 'https://api.themoviedb.org/3';
  var upcomingMovieUrl = '$mainUrl/movie/upcoming?api_key=$apiKey';
  var trendingMovieUrl = '$mainUrl/trending/movie/day?api_key=$apiKey';
  var topRatedMovieUrl = '$mainUrl/movie/top_rated?api_key=$apiKey';
  var nowPlayingMovieUrl = '$mainUrl/movie/now_playing?api_key=$apiKey';

  Future<TrendingMovies> getTrendingMovie() async {
    final response = await http.get(
      Uri.parse(trendingMovieUrl),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      TrendingMovies? movieInfo =
          serializers.deserializeWith(TrendingMovies.serializer, responseData);
      return movieInfo!;
    } else {
      throw Exception("Error: Cannot fetch movies");
    }
  }

  Future<UpcomingMovies> getUpcomingMovie() async {
    final response = await http.get(
      Uri.parse(upcomingMovieUrl),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      UpcomingMovies? movieInfo =
          serializers.deserializeWith(UpcomingMovies.serializer, responseData);
      return movieInfo!;
    } else {
      throw Exception("Error: Cannot fetch movies");
    }
  }

  Future<TopRatedMovies> getTopRatedMovie() async {
    final response = await http.get(
      Uri.parse(topRatedMovieUrl),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      TopRatedMovies? movieInfo =
          serializers.deserializeWith(TopRatedMovies.serializer, responseData);
      return movieInfo!;
    } else {
      throw Exception("Error: Cannot Fetch Movies");
    }
  }

  Future<NowPlayingMovies> getNowPlayingMovie() async {
    final response = await http.get(
      Uri.parse(nowPlayingMovieUrl),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      NowPlayingMovies? movieInfo = serializers.deserializeWith(
          NowPlayingMovies.serializer, responseData);
      return movieInfo!;
    } else {
      throw Exception("Error: Cannot fetch movies");
    }
  }
}
