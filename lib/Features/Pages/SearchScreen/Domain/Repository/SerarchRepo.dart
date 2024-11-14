import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';


abstract class SearchRepo {
  Future<Either<Failure, List<MovieModel>>> fetchSerachMovie(int page,int perPage,String searchTerm);
}
