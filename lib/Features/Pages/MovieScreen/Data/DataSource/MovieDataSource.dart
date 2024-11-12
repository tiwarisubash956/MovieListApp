import 'package:dio/dio.dart';
import 'package:movielistapp/Core/Database/DatabaseService.dart';
import 'package:movielistapp/Core/Error/exception.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';

abstract class MoviesDataSource {
  Future<List<MovieModel>> fetchMoviesData(int page, int per_page);
}

class MoviesDataSourceimpl implements MoviesDataSource {
  final DatabaseService dbservices = DatabaseService.instance;

  final Dio dio;

  MoviesDataSourceimpl({required this.dio});

  @override
  Future<List<MovieModel>> fetchMoviesData(int page, int per_page) async {
    try {
      // List<MovieModel> cachedmovies = await dbservices.getCachedMovies();
      // if (cachedmovies.isNotEmpty) {
      //   return cachedmovies;
      // } else {
      final response = await dio.get(
        'https://api.tvmaze.com/search/shows?q=all',
      );
      // Check headers for rate-limit info
      if (response.statusCode == 200) {
        final List<dynamic> result = response.data;

        List<MovieModel> apimovies =
            result.map((json) => MovieModel.fromJson(json)).toList();
        // for (var movies in apimovies) {
        //   await dbservices.insertMovie(movies);
        // }

        return apimovies;
      } else {
        throw ServerException("Error While fetching image data");
      }
    } on DioException catch (e) {
      throw ServerException("$e");
    }
  }
}
