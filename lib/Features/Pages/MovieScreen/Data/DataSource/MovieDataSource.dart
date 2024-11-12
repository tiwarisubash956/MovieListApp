import 'package:dio/dio.dart';
import 'package:movielistapp/Core/Database/DatabaseService.dart';
import 'package:movielistapp/Core/Error/exception.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';

/// Abstract class to define the contract for fetching movie data
/// This ensures that different implementations of fetching data
/// (like from a remote server or a local database) will be consistent.
abstract class MoviesDataSource {
  /// Method to fetch movie data with pagination support.
  ///
  /// Parameters:
  /// - [page] - The current page number to fetch.
  /// - [per_page] - The number of items per page.
  ///
  /// Returns a [Future] containing a list of [MovieModel].
  /// Throws an exception if something goes wrong.
  Future<List<MovieModel>> fetchMoviesData(int page, int per_page);
}

/// Concrete implementation of [MoviesDataSource] that fetches data using Dio
/// and caches the data using a local database service.
class MoviesDataSourceimpl implements MoviesDataSource {
  /// An instance of [DatabaseService] for handling local database operations.
  final DatabaseService dbservices = DatabaseService.instance;

  /// Dio instance used for making HTTP requests.
  final Dio dio;

  /// Constructor to initialize [MoviesDataSourceimpl] with a [Dio] instance.
  MoviesDataSourceimpl({required this.dio});

  /// Fetches movie data from a remote API.
  ///
  /// If data is available in the local cache, it can be returned (commented out for now).
  /// Otherwise, it makes a network request to fetch movie data from the API.
  ///
  /// Parameters:
  /// - [page] - The page number for paginated results.
  /// - [per_page] - The number of results per page (currently not used in API request).
  ///
  /// Returns a [Future] containing a list of [MovieModel].
  /// Throws [ServerException] if the server returns an error or the request fails.
  @override
  Future<List<MovieModel>> fetchMoviesData(int page, int per_page) async {
    try {
      // Uncomment the code below if you want to fetch cached movies first.
      // If cached movies exist, return them directly.
      // List<MovieModel> cachedmovies = await dbservices.getCachedMovies();
      // if (cachedmovies.isNotEmpty) {
      //   return cachedmovies;
      // }

      // Make a network request to fetch movie data from the API.
      final response = await dio.get(
        'https://api.tvmaze.com/search/shows?q=all',
      );

      // Check if the response status code is 200 (OK).
      if (response.statusCode == 200) {
        // Parse the response data into a list of dynamic objects.
        final List<dynamic> result = response.data;

        // Map the response data to a list of [MovieModel] objects.
        List<MovieModel> apimovies =
            result.map((json) => MovieModel.fromJson(json)).toList();

        // Uncomment the code below to cache the fetched movies into the local database.
        // for (var movies in apimovies) {
        //   await dbservices.insertMovie(movies);
        // }

        // Return the list of movies fetched from the API.
        return apimovies;
      } else {
        // If the response status code is not 200, throw a [ServerException].
        throw ServerException("Error While fetching image data");
      }
    } on DioException catch (e) {
      // Handle Dio-specific exceptions and throw a [ServerException].
      throw ServerException("$e");
    }
  }
}
