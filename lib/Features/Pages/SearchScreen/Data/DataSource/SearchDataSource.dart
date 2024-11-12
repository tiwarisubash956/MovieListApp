import 'package:dio/dio.dart';
import 'package:movielistapp/Core/Error/exception.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';

abstract class SearchTermDataSource {
  Future<List<MovieModel>> Search(int page, int per_page, String search_term);
}

class SearchTermDataSourceimpl implements SearchTermDataSource {
  final Dio dio;

  SearchTermDataSourceimpl({required this.dio});

  @override
  Future<List<MovieModel>> Search(
      int page, int per_page, String search_term) async {
    try {
      print(search_term);
      final response = await dio.get(
        'https://api.tvmaze.com/search/shows?q=$search_term',
      );
      // Check headers for rate-limit info
      print(response.data);

      if (response.statusCode == 200) {
        final List<dynamic> result = response.data;
        return result.map((json) => MovieModel.fromJson(json)).toList();
      } else {
        throw ServerException("Error While fetching image data");
      }
    } on DioException catch (e) {
      throw ServerException("$e");
    }
  }
}
