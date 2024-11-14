import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Core/UseCase/UseCase.dart';
import 'package:movielistapp/Features/Auth/Domain/Repository/AuthRepo.dart';

class Signupusecase implements Usecase<void, Signuparamas> {
  final Authrepo authrepo;

  Signupusecase({required this.authrepo});
  @override
  Future<Either<Failure, void>> call(Signuparamas params) async {
    return await authrepo.signup(params.email, params.password);
  }
}

class Signuparamas {
  final String password;
  final String email;

  Signuparamas({required this.password, required this.email});
}
