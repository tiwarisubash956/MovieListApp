// ignore: file_names, camel_case_types
abstract class Failure {}

class ServerFailure extends Failure {
  final String message;

  ServerFailure({required this.message});
}
