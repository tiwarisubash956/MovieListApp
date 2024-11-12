import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';

abstract class Moviesrepo {
  Future<Either<Failure, List<MovieModel>>> fetchMovies(int page,int per_page);
}
