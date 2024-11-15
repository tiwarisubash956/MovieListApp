import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movielistapp/Core/Error/exception.dart';
import 'package:movielistapp/Features/Auth/Data/Models/UserModel.dart';

abstract class AuthDataSource {
  Future<void> signup(String email, String password);
  Future<UserModel> signin(String email, String password);
  Future<UserModel?> getCurrentUser();
  Future<void> Logout();
}

class AuthDataSourceimpl implements AuthDataSource {
  final Dio dio;
  final FirebaseAuth firebaseAuth;

  AuthDataSourceimpl({required this.dio, required this.firebaseAuth});

  @override
  Future<void> signup(String email, String password) async {
    try {
      // ignore: unused_local_variable
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw Exception("$e");
    }
  }

  @override
  Future<UserModel> signin(String email, String password) async {
    try {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return UserModel.fromFirebaseUser(userCredential.user);
    } on DioException catch (e) {
      throw ServerException("$e");
      //
    }
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    try {
      final user = firebaseAuth.currentUser;
      return user != null ? UserModel.fromFirebaseUser(user) : null;
    } on DioException catch (e) {
      throw ServerException("$e");
    }
  }

  @override
  // ignore: non_constant_identifier_names
  Future<void> Logout() async {
    try {
      await firebaseAuth.signOut();
    } on DioException catch (e) {
      throw ServerException("$e");
    }
  }

  // ignore: non_constant_identifier_names
}
