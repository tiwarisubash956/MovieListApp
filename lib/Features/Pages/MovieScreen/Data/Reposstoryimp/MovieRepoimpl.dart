import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/DataSource/MovieDataSource.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Domain/Repository/MovieRepo.dart';

class Moviesrepoimpl implements Moviesrepo {
  final MoviesDataSource moviesDataSource;

  Moviesrepoimpl({required this.moviesDataSource});
  @override
  Future<Either<Failure, List<MovieModel>>> fetchMovies(
      int page, int per_page) async {
    try {
      final result =
          await moviesDataSource.fetchMoviesData(page, per_page);
      return right(result);
    } catch (e) {
      return left(ServerFailure(message: "${e.toString()}"));
    }
  }
}
