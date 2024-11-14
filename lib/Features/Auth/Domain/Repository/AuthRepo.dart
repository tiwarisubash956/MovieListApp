import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/failure.dart';

abstract class Authrepo {
  Future<Either<Failure, void>> signup(String email, String password);
}
