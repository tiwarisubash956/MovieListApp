import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Core/UseCase/UseCase.dart';
import 'package:movielistapp/Features/Auth/Data/Models/UserModel.dart';
import 'package:movielistapp/Features/Auth/Domain/Repository/AuthRepo.dart';

class CheckAuthStatusUsecase
    implements Usecase<UserModel?, CheckAuthStatusparmas> {
  final Authrepo authrepo;

  CheckAuthStatusUsecase({required this.authrepo});
  @override
  Future<Either<Failure, UserModel?>> call(CheckAuthStatusparmas params) async {
    return await authrepo.checkAuthStatus();
  }
}

class CheckAuthStatusparmas {
  CheckAuthStatusparmas();
}
