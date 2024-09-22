import 'dart:convert';

import 'package:movie_app/common/utils.dart';
import 'package:movie_app/models/genre_model.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/models/tvshow_model.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'https://api.themoviedb.org/3/';
const key = '?api_key=$apiKey';

class ApiServices {
  Future<Result> getTopRatedMovies() async {
    var endPoint = 'movie/top_rated';
    final url = '$baseUrl$endPoint$key';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return Result.fromJson(jsonDecode(response.body));
    }
    throw Exception('failed to load now playing movies');
  }

  Future<Result> getNowPlayingMovies() async {
    var endPoint = 'movie/now_playing';
    final url = '$baseUrl$endPoint$key';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return Result.fromJson(jsonDecode(response.body));
    }
    throw Exception('failed to load now playing movies');
  }

  Future<Result> getUpcomingMovies() async {
    var endPoint = 'movie/upcoming';
    final url = '$baseUrl$endPoint$key';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return Result.fromJson(jsonDecode(response.body));
    }
    throw Exception('failed to load upcoming movies');
  }

  Future<Result> getPopularMovies() async {
    const endPoint = 'movie/popular';
    const url = '$baseUrl$endPoint$key';

    final response = await http.get(Uri.parse(url), headers: {});
    if (response.statusCode == 200) {
      return Result.fromJson(jsonDecode(response.body));
    }
    throw Exception('failed to load now playing movies');
  }

  Future<Result> getRecommendedMovies(int movieId) async {
    final endPoint = 'movie/$movieId/recommendations';
    final url = '$baseUrl$endPoint$key';

    final response = await http.get(Uri.parse(url), headers : {});
    if(response.statusCode == 200){
      return Result.fromJson(jsonDecode(response.body));
    }
    throw Exception('failed to load recommended movies for movie id $movieId');
  }

  Future<GenreResults> getGenres() async{
    final endPoint = 'genre/movie/list';
    final url = '$baseUrl$endPoint$key';

    final response = await http.get(Uri.parse(url), headers : {});
    if (response.statusCode == 200){
      return GenreResults.fromJson(jsonDecode(response.body));
    }

    throw Exception('failed to load genres');
  }

  Future<tvResults> getTopRatedTvShows() async {
    final endPoint = 'tv/top_rated';
    final url = '$baseUrl$endPoint$key';

    final response = await http.get(Uri.parse(url), headers: {});

    if(response.statusCode == 200){
      return tvResults.fromJson(jsonDecode(response.body));
    }

    throw Exception('failed to load tvShows'); 
  }


}
