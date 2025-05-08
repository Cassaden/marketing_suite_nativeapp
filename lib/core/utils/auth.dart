import 'package:app/core/repositories/auth.dart';

class AuthUtils {
  static final AuthUtils _instance = AuthUtils._();

  AuthUtils._();

  factory AuthUtils() {
    return _instance;
  }

  Future<bool> isUserAuthenticated() async {
    final String? accessToken = await AuthRepository.getCurrentAccessToken();

    if (accessToken != null) {
      return true;
    }

    return false;
  }
}
