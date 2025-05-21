import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:app/features/auth/exceptions.dart';

import 'package:app/features/auth/data/auth.models.dart';
import 'package:app/features/auth/domain/auth.repositories.dart' as base;

class AuthRepository implements base.AuthRepository {
  static final AuthRepository _instance = AuthRepository._internal();

  factory AuthRepository() {
    return _instance;
  }

  AuthRepository._internal();

  Future<User> getCurrentLoggedInUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? currentLoggedInUser = prefs.getString('currentLoggedInUser');

    if (currentLoggedInUser != null) {
      final Map<String, dynamic> userMap = jsonDecode(currentLoggedInUser);
      final User userProfile = User.fromMap(userMap);
      return userProfile;
    }

    throw NoLoggedInUserFoundException();
  }

  Future<void> setCurrentLoggedInUser(covariant User userProfile) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final String userProfileString = jsonEncode(userProfile.toMap());
    await prefs.setString('currentLoggedInUser', userProfileString);
  }

  Future<void> clearCurrentLoggedInUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentLoggedInUser');
  }

  Future<String> getCurrentAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? authToken = prefs.getString('currentAccessToken');

    if (authToken != null) {
      return authToken;
    }

    throw NoAccessTokenFoundException();
  }

  Future<void> setCurrentAccessToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('currentAccessToken', token);
  }

  Future<void> clearCurrentAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentAccessToken');
  }

  Future<String> getCurrentRefreshToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? refreshToken = prefs.getString('currentRefreshToken');

    if (refreshToken != null) {
      return refreshToken;
    }

    throw NoRefreshTokenFoundException();
  }

  Future<void> setCurrentRefreshToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('currentRefreshToken', token);
  }

  Future<void> clearCurrentRefreshToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentRefreshToken');
  }

  Future<bool> isUserAuthenticated() async {
    final String? accessToken = await getCurrentAccessToken();

    if (accessToken != null) {
      return true;
    }

    return false;
  }

  Future<User> login(String username, String password) async {
    throw UnimplementedError();
  }
}
