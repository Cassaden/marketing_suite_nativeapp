import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:app/core/exceptions.dart';
import 'package:app/core/models/auth.dart';

class AuthRepository {
  static final AuthRepository _instance = AuthRepository._internal();

  factory AuthRepository() {
    return _instance;
  }

  AuthRepository._internal();

  static Future<UserProfile?> getCurrentLoggedInUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? currentLoggedInUser = prefs.getString('currentLoggedInUser');

    if (currentLoggedInUser != null) {
      final Map<String, dynamic> userMap = jsonDecode(currentLoggedInUser);
      final UserProfile userProfile = UserProfile.fromMap(userMap);
      return userProfile;
    }

    return null;
  }

  static Future<void> setCurrentLoggedInUser(UserProfile userProfile) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final String userProfileString = jsonEncode(userProfile.toMap());
    await prefs.setString('currentLoggedInUser', userProfileString);
  }

  static Future<void> clearCurrentLoggedInUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentLoggedInUser');
  }

  static Future<String> getCurrentAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? authToken = prefs.getString('currentAccessToken');

    if (authToken != null) {
      return authToken;
    }

    throw AuthRepositoryException(
      AuthRepositoryExceptionErrorCode.tokenNotFound,
    );
  }

  static Future<void> setCurrentAccessToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('currentAccessToken', token);
  }

  static Future<void> clearCurrentAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentAccessToken');
  }

  static Future<String> getCurrentRefreshToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? refreshToken = prefs.getString('currentRefreshToken');

    if (refreshToken != null) {
      return refreshToken;
    }

    throw AuthRepositoryException(
      AuthRepositoryExceptionErrorCode.tokenNotFound,
    );
  }

  static Future<void> setCurrentRefreshToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('currentRefreshToken', token);
  }

  static Future<void> clearCurrentRefreshToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentRefreshToken');
  }
}
