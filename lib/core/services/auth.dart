import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:app/core/models/auth.dart';
import 'package:app/core/repositories/auth.dart';
import 'package:app/core/constants/api_uris.dart';

class AuthClient {
  static AuthClient instance = AuthClient._();

  AuthClient._();

  static AuthClient getInstance() {
    return instance;
  }

  login(UserLogin userLogin) {
    Map<String, dynamic> userMap = userLogin.toMap();

    http
        .post(
          Uri.parse(ApiUris.login),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(userMap),
        )
        .then((response) {
          if (response.statusCode == 200) {
            final Map<String, dynamic> userLoginResponse = jsonDecode(
              response.body,
            );
            print(userLoginResponse.toString());
            //AuthRepository.setCurrentLoggedInUser(userProfile);
          } else {
            throw Exception('Failed to login');
          }
        });
  }

  logout() {
    http
        .post(
          Uri.parse(ApiUris.logout),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        )
        .then((response) {
          if (response.statusCode == 200) {
            AuthRepository.clearCurrentLoggedInUser();
          } else {
            throw Exception('Failed to logout');
          }
        });
  }

  register(UserRegistration userRegistration) {
    Map<String, dynamic> userMap = userRegistration.toMap();

    http
        .post(
          Uri.parse(ApiUris.register),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: userMap,
        )
        .then((response) {
          if (response.statusCode == 200) {
            final Map<String, dynamic> userMap = jsonDecode(response.body);
            final UserProfile userProfile = UserProfile.fromMap(userMap);
            AuthRepository.setCurrentLoggedInUser(userProfile);
          } else {
            throw Exception('Failed to registration');
          }
        });
  }

  resetPassword(String email) {
    http
        .post(
          Uri.parse(ApiUris.resetPassword),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode({'email': email}),
        )
        .then((response) {
          if (response.statusCode == 200) {
            print('Reset password email sent');
          } else {
            throw Exception('Failed to send reset password email');
          }
        });
  }

  verifyEmail(String email) {
    http
        .post(
          Uri.parse(ApiUris.verifyEmail),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode({'email': email}),
        )
        .then((response) {
          if (response.statusCode == 200) {
            print('Email verified');
          } else {
            throw Exception('Failed to verify email');
          }
        });
  }

  changePassword(String oldPassword, String newPassword) {
    http
        .post(
          Uri.parse(ApiUris.changePassword),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode({
            'old_password': oldPassword,
            'new_password': newPassword,
          }),
        )
        .then((response) {
          if (response.statusCode == 200) {
            print('Password changed');
          } else {
            throw Exception('Failed to change password');
          }
        });
  }

  getUserProfile() {
    http
        .get(
          Uri.parse(ApiUris.getUserProfile),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        )
        .then((response) {
          if (response.statusCode == 200) {
            final Map<String, dynamic> userMap = jsonDecode(response.body);
            final UserProfile userProfile = UserProfile.fromMap(userMap);
            AuthRepository.setCurrentLoggedInUser(userProfile);
          } else {
            throw Exception('Failed to get user profile');
          }
        });
  }

  refreshToken() {
    http
        .post(
          Uri.parse(ApiUris.refresh),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        )
        .then((response) {
          if (response.statusCode == 200) {
            final Map<String, dynamic> tokenMap = jsonDecode(response.body);
            final String accessToken = tokenMap['access'];
            AuthRepository.setCurrentAccessToken(accessToken);
          } else {
            throw Exception('Failed to refresh token');
          }
        });
  }
}
