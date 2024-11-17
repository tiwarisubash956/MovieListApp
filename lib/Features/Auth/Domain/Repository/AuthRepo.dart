import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Features/Auth/Data/Models/UserModel.dart';

abstract class Authrepo {
  Future<Either<Failure, void>> signup(String email, String password);
  Future<Either<Failure, UserModel>> signin(String email, String password);
  Future<Either<Failure, UserModel?>> checkAuthStatus();
  Future<Either<Failure, void>> logout();
  Future<Either<Failure, void>> sendOtp(String Email,String Otp);
}
