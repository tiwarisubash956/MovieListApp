import 'package:dartz/dartz.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Core/UseCase/UseCase.dart';
import 'package:movielistapp/Features/Auth/Domain/Repository/AuthRepo.dart';

class SendOtpcase implements Usecase<void, SendOtpparamas> {
  final Authrepo authrepo;

  SendOtpcase({required this.authrepo});
  @override
  Future<Either<Failure, void>> call(SendOtpparamas params) async {
    return await authrepo.sendOtp(params.email, params.otp);
  }
}

class SendOtpparamas {
  final String email;
  final String otp;
  SendOtpparamas({required this.email, required this.otp});
}
