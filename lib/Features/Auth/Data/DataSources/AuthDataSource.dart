import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movielistapp/Core/Error/exception.dart';
import 'package:movielistapp/Features/Auth/Data/Models/UserModel.dart';

abstract class AuthDataSource {
  Future<void> signup(String email, String password);
  Future<UserModel> signin(String email, String password);
  Future<UserModel?> getCurrentUser();
  // ignore: non_constant_identifier_names
  Future<void> Logout();
  Future<void> sendOtp(String email, String otp);
}

class AuthDataSourceimpl implements AuthDataSource {
  final Dio dio;
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;

  AuthDataSourceimpl(
      {required this.dio,
      required this.firebaseAuth,
      required this.firebaseFirestore});

  @override
  Future<void> signup(String email, String password) async {
    try {
      // ignore: unused_local_variable
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<UserModel> signin(String email, String password) async {
    try {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return UserModel.fromFirebaseUser(userCredential.user);
    } on FirebaseAuthException catch (e) {
      throw ServerException(e.toString());
      //
    }
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    try {
      final user = firebaseAuth.currentUser;
      return user != null ? UserModel.fromFirebaseUser(user) : null;
    } on FirebaseAuthException catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  // ignore: non_constant_identifier_names
  Future<void> Logout() async {
    try {
      await firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> sendOtp(String email, String otp) async {
    try {
      firebaseFirestore.collection('otp_codes').doc(email).set({'otp': otp});
    } on FirebaseException catch (e) {
      throw ServerException(e.toString());
    }
  }

  // ignore: non_constant_identifier_names
}
