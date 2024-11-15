import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Core/UseCase/UseCase.dart';
import 'package:movielistapp/Features/Auth/Data/Models/UserModel.dart';
import 'package:movielistapp/Features/Auth/Domain/Repository/AuthRepo.dart';

class Signinusecase implements Usecase<UserModel, Signinaramas> {
  final Authrepo authrepo;

  Signinusecase({required this.authrepo});
  @override
  Future<Either<Failure, UserModel>> call(Signinaramas params) async {
    return await authrepo.signin(params.email, params.password);
  }

}

class Signinaramas {
  final String password;
  final String email;

  Signinaramas({required this.password, required this.email});
}
