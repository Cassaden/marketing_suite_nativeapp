class AuthUtils {
  static final AuthUtils _instance = AuthUtils._();

  AuthUtils._();

  factory AuthUtils() {
    return _instance;
  }

  bool isUserAuthenticated() {
    return false;
  }
}
