import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/failure.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class Noparams {}
