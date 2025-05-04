import 'package:app/core/models/auth.dart';
import 'package:app/core/repositories/auth.dart';

class AuthUtils {
  static final AuthUtils _instance = AuthUtils._();

  AuthUtils._();

  factory AuthUtils() {
    return _instance;
  }

  Future<bool> isUserAuthenticated() async {
    final UserProfile? userProfile =
        await AuthRepository.getCurrentLoggedInUser();
    final String? accessToken = await AuthRepository.getCurrentAccessToken();

    if (userProfile != null && accessToken != null) {
      return true;
    }

    return false;
  }
}
