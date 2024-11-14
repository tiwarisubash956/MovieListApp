import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movielistapp/Features/Auth/Data/Models/UserModel.dart';

abstract class AuthDataSource {
  Future<void> signup(String email, String password);
}

class AuthDataSourceimpl implements AuthDataSource {
  final Dio dio;
  final FirebaseAuth firebaseAuth;

  AuthDataSourceimpl({required this.dio, required this.firebaseAuth});

  @override
  Future<void> signup(String email, String password) async {
    try {
      print("Hello");
      // ignore: unused_local_variable
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
          print("Hello");
    } catch (e) {
      throw Exception("$e");
    }
  }

  // ignore: non_constant_identifier_names
}
