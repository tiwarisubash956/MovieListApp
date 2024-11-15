import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Features/Auth/Data/Models/UserModel.dart';
import 'package:movielistapp/Features/Auth/Domain/UseCases/CheckAuthStatusUsecase.dart';
import 'package:movielistapp/Features/Auth/Domain/UseCases/LogOutUsecase.dart';
import 'package:movielistapp/Features/Auth/Domain/UseCases/SignInUseCase.dart';
import 'package:movielistapp/Features/Auth/Domain/UseCases/signupUsecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Signupusecase signupusecase;
  final Signinusecase signinusecase;
  final CheckAuthStatusUsecase checkAuthStatusUsecase;
  final LogoutUsecase logoutUsecase;
  AuthBloc(
      {required this.logoutUsecase,
      required this.signinusecase,
      required this.signupusecase,
      required this.checkAuthStatusUsecase})
      : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      if (event is SignUp) {
        try {
          final failureorsucces = await signupusecase(
              Signuparamas(password: event.Password, email: event.Email));
          failureorsucces.fold(
              (failure) =>
                  emit(AuthState.authError((failure as ServerFailure).message)),
              (success) => emit(const AuthState.signupSuccessState()));
        } on Exception catch (e) {
          emit(AuthState.authError("$e"));
          //
        }
      }
      try {
        if (event is Signin) {
          final failureorsucces = await signinusecase(
              Signinaramas(password: event.Password, email: event.Email));

          failureorsucces.fold(
              (failure) =>
                  emit(AuthState.authError((failure as ServerFailure).message)),
              (success) => emit(AuthState.authenticated(success)));
        }
      } on Exception catch (e) {
        emit(AuthState.authError(("$e")));
      }

      if (event is CheckAuthStatus) {
        try {
          final failureorsucces =
              await checkAuthStatusUsecase(CheckAuthStatusparmas());

          failureorsucces.fold((failure) => emit(const AuthState.authError("")),
              (success) => emit(AuthState.logined(success)));
        } on Exception catch (e) {
          emit(AuthState.authError(("$e")));
        }
      }
      if (event is LogOut) {
        final failureorsucces = await logoutUsecase(logoutparmas());
        failureorsucces.fold(
            (failure) =>
                emit(AuthState.authError((failure as ServerFailure).message)),
            (success) => emit(const AuthState.logOuted()));
      }
    });
  }
}
