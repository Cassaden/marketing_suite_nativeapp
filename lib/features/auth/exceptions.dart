class AuthFeatureException implements Exception {
  final String message;

  AuthFeatureException(this.message);

  @override
  toString() => 'Auth feature exception occured: $message';
}

class UserLoginFailedException extends AuthFeatureException {
  String username;

  UserLoginFailedException(this.username)
    : super("Couldn't log user in using username: $username");
}

class NoAccessTokenFoundException extends AuthFeatureException {
  NoAccessTokenFoundException()
    : super('No access token found in shared preferences.');
}

class NoRefreshTokenFoundException extends AuthFeatureException {
  NoRefreshTokenFoundException()
    : super('No refresh token found in shared preferences.');
}

class NoLoggedInUserFoundException extends AuthFeatureException {
  NoLoggedInUserFoundException() : super('No logged in user found');
}

class InvalidAuthApiResponseException extends AuthFeatureException {
  InvalidAuthApiResponseException() : super('Invalid API response');
}
