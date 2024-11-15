// ignore_for_file: unused_local_variable

import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/exception.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Features/Auth/Data/DataSources/AuthDataSource.dart';
import 'package:movielistapp/Features/Auth/Data/Models/UserModel.dart';
import 'package:movielistapp/Features/Auth/Domain/Repository/AuthRepo.dart';

class Authrepoimpl implements Authrepo {
  final AuthDataSource authDataSource;

  Authrepoimpl({required this.authDataSource});
  @override
  Future<Either<Failure, void>> signup(String email, String password) async {
    try {
      final result = await authDataSource.signup(email, password);
      return right(null);
    } on ServerException catch (e) {
      throw left(ServerFailure(message: "$e"));
    }
  }

  @override
  Future<Either<Failure, UserModel>> signin(
      String email, String password) async {
    try {
      final result = await authDataSource.signin(email, password);
      return right(result);
    } catch (e) {
      return left(ServerFailure(message: "$e"));
    }
  }
}
