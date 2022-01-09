import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:omdb_movie_app/app/data/models/movie.dart';
import 'package:omdb_movie_app/app/data/models/movie_summary.dart';




class OmdbApi {
  final Dio _dio = Dio(
    BaseOptions(
        baseUrl: 'http://www.omdbapi.com',
        connectTimeout: 5000,
        receiveTimeout: 3000,
        responseType: ResponseType.json
    ),
  );


  Future<List<MovieSummary>?> getMovies(int page, String search) {
    return _dio.get('/', queryParameters: {
      'apikey': '523b6c1c',
      'type': 'movie',
      'page': page,
      's': search
    }).then((value) {
      if (value.data['Response'] = false) {
        return null;
      } else {
        List<MovieSummary> ms = [];
        value.data['Search'].map((e) {
          ms.add(MovieSummary.fromJson(jsonDecode(jsonEncode(e))));
        }).toList();
        return ms;
      }
    });
  }

  Future<Movie?> getMovie(String movieId) async {
    try {
      return _dio.get('/', queryParameters: {
        'apikey': '523b6c1c',
        'i': movieId,
      }).then((value) {
          late Movie movie;
          movie = Movie.fromJson(jsonDecode(jsonEncode(value.data)));
          return movie;
        }
      );
    } catch (e) {
      Get.log(e.toString(),isError:true);
      return null;
    }
  }
}