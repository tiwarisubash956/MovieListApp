part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authError(String mesage)= AuthError;
  const factory AuthState.authenticated(UserModel userentity)=Authenticated;
  const factory AuthState.signupSuccessState() = SignupSuccessState;
}
