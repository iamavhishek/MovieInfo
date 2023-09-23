import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movieinfo/model/movie_model.dart';
import 'package:movieinfo/model/serializers.dart';

class MovieDetailRepository {
  static String apiKey = '45cc8d3a70440c9f41ee4440be6e81e0';
  static String mainUrl = '';

  Future<MovieDetail> getMovieDetail(int movieId) async {
    final response = await http.get(
      Uri.parse('https://api.themoviedb.org/3/movie/$movieId?api_key=$apiKey'),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      MovieDetail? movieDetail =
          serializers.deserializeWith(MovieDetail.serializer, responseData);
      return movieDetail!;
    } else {
      throw Exception("Error: Cannot Fetch Movie Detail");
    }
  }

  Future<MovieCredits> getMovieCasts(int movieId) async {
    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/movie/$movieId/credits?api_key=$apiKey'),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      MovieCredits? movieCasts =
          serializers.deserializeWith(MovieCredits.serializer, responseData);
      return movieCasts!;
    } else {
      throw Exception("Error: Cannot Fetch Movie Cast");
    }
  }
}
