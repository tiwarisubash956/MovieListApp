class ServerException implements Exception {
  final String message;
  ServerException(this.message);
}

class localStorageException implements Exception {
  final String message;

  localStorageException({required this.message});
}
