enum AuthClientExceptionErrorCode {
  invalidCredentials,
  userNotFound,
  networkError,
  unknownError,
}

class AuthClientException implements Exception {
  final AuthClientExceptionErrorCode errorCode;
  final String? errorMessage;

  AuthClientException(this.errorCode, {this.errorMessage});
}

enum AuthRepositoryExceptionErrorCode {
  tokenNotFound,
  tokenExpired,
  unknownError,
}

class AuthRepositoryException implements Exception {
  final AuthRepositoryExceptionErrorCode errorCode;
  final String? errorMessage;

  AuthRepositoryException(this.errorCode, {this.errorMessage});
}
