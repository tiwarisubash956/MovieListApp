import 'package:dio/dio.dart';
import 'package:movielistapp/Core/Error/exception.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';

/// Abstract class defining the contract for searching movies by term
abstract class SearchTermDataSource {
  /// Fetch a list of movies based on the search term, page, and per_page
  Future<List<MovieModel>> Search(int page, int per_page, String search_term);
}

class SearchTermDataSourceimpl implements SearchTermDataSource {
  // Instance of Dio for making HTTP requests
  final Dio dio;

  // Constructor for initializing the data source with Dio
  SearchTermDataSourceimpl({required this.dio});

  /// Fetch movies based on the search term from the API
  /// 
  /// Takes [page], [per_page], and [search_term] as parameters.
  /// It constructs the API URL and fetches data from the server.
  /// On success, it parses the response and returns a list of [MovieModel].
  /// If the request fails or returns an error, an exception is thrown.
  @override
  Future<List<MovieModel>> Search(
      int page, int per_page, String search_term) async {
    try {
      // Print search term for debugging
      print(search_term);

      // Make GET request to search for shows by the search term
      final response = await dio.get(
        'https://api.tvmaze.com/search/shows?q=$search_term',
      );

      // Print the response data for debugging purposes
      print(response.data);

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Parse the response data into a list of MovieModel objects
        final List<dynamic> result = response.data;
        return result.map((json) => MovieModel.fromJson(json)).toList();
      } else {
        // If the status code is not 200, throw an exception
        throw ServerException("Error While fetching image data");
      }
    } on DioException catch (e) {
      // If there is a DioException, wrap it in a custom ServerException and throw
      throw ServerException("$e");
    }
  }
}
