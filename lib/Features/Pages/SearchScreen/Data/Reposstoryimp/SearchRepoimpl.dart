import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Data/DataSource/SearchDataSource.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Domain/Repository/SerarchRepo.dart';

class SearchRepoimpl implements SearchRepo {
  final SearchTermDataSourceimpl searchRepoDataSource;

  SearchRepoimpl({required this.searchRepoDataSource});
  @override
  Future<Either<Failure, List<MovieModel>>> fetchSerachMovie(
      // ignore: non_constant_identifier_names
      int page, int per_page,String search_term) async {
    try {
      final result = await searchRepoDataSource.Search(page, per_page,search_term);
      return right(result);
    } catch (e) {
      return left(ServerFailure(message: "$e"));
    }
  }
}
