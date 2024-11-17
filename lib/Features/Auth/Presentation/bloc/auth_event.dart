// ignore_for_file: non_constant_identifier_names

part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.LoadingEvent()=Loading;
  const factory AuthEvent.AuthErrorEvent(String message)=AuthErrorEvent;
  const factory AuthEvent.SignInEvent(String Email ,String Password)= Signin;
  const factory AuthEvent.SignUpEvent(String Email,String Password)=SignUp;
  const factory AuthEvent.CheckAuthStatus()=CheckAuthStatus;
  const factory AuthEvent.LogoutEvent()= LogOut;
  const factory AuthEvent.SendOtpEvent(String email) = SendOtp;

}