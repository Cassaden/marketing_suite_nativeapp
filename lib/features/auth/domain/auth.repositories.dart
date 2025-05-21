import 'auth.models.dart';

abstract interface class AuthRepository {
  Future<User?> getCurrentLoggedInUser();
  Future<void> setCurrentLoggedInUser(User userProfile);
  Future<void> clearCurrentLoggedInUser();
  Future<String> getCurrentAccessToken();
  Future<void> setCurrentAccessToken(String token);
  Future<void> clearCurrentAccessToken();
  Future<String> getCurrentRefreshToken();
  Future<void> setCurrentRefreshToken(String token);
  Future<void> clearCurrentRefreshToken();
  Future<bool> isUserAuthenticated();
  Future<User> login(String username, String password);
}
