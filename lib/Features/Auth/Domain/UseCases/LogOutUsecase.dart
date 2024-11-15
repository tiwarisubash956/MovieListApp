import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Core/UseCase/UseCase.dart';
import 'package:movielistapp/Features/Auth/Domain/Repository/AuthRepo.dart';

class LogoutUsecase implements Usecase<void, logoutparmas> {
  final Authrepo authrepo;

  LogoutUsecase({required this.authrepo});
  @override
  Future<Either<Failure, void>> call(logoutparmas params) async {
    return await authrepo.logout();
  }
}

class logoutparmas {
  logoutparmas();
}
