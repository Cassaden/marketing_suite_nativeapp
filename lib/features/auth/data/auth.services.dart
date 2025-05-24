import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:app/core/constants/api_uris.dart';

import 'package:app/features/auth/exceptions.dart';

class AuthApiProvider {
  static AuthApiProvider instance = AuthApiProvider._();

  AuthApiProvider._();

  factory AuthApiProvider() {
    return instance;
  }

  Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await http.post(
      Uri.parse(ApiUris.login),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({'username': username, 'password': password}),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      return responseData;
    } else {
      throw UserLoginFailedException(username);
    }
  }

  Map<String, dynamic> logout() {
    http
        .post(
          Uri.parse(ApiUris.logout),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        )
        .then((response) {
          if (response.statusCode == 200) {
            Map<String, dynamic> jsonData = jsonDecode(response.body);
            return jsonData;
          } else {
            throw Exception('Failed to logout.');
          }
        });
    throw Exception('Failed to logout');
  }

  Map<String, dynamic> register({
    required String username,
    required String firstName,
    String lastName = '',
    required String password1,
    required String password2,
    required String email,
  }) {
    http
        .post(
          Uri.parse(ApiUris.register),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: {
            username: username,
            firstName: firstName,
            lastName: lastName,
            password1: password1,
            password2: password2,
            email: email,
          },
        )
        .then((response) {
          if (response.statusCode == 200) {
            final Map<String, dynamic> responseData = jsonDecode(response.body);
            return responseData;
          } else {
            throw Exception('Failed to registration');
          }
        });
    throw Exception('Failed to login.');
  }

  Map<String, dynamic> resetPassword(String email) {
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
            Map<String, dynamic> responseData = jsonDecode(response.body);
            return responseData;
          } else {
            throw Exception('Failed to send reset password email');
          }
        });
    throw Exception('Failed to send reset password email');
  }

  Map<String, dynamic> changePassword(String oldPassword, String newPassword) {
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
            Map<String, dynamic> responseData = jsonDecode(response.body);
            return responseData;
          } else {
            throw Exception('Failed to change password');
          }
        });
    throw Exception('Failed to set password.');
  }

  Map<String, dynamic> getUserProfile() {
    http
        .get(
          Uri.parse(ApiUris.getUserProfile),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        )
        .then((response) {
          if (response.statusCode == 200) {
            final Map<String, dynamic> responseData = jsonDecode(response.body);
            return responseData;
          } else {
            throw Exception('Failed to get user profile');
          }
        });
    throw Exception('Failed to get user profile.');
  }

  Map<String, dynamic> refreshAccessToken(String currentRefreshToken) {
    http
        .post(
          Uri.parse(ApiUris.refresh),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode({'refresh': currentRefreshToken}),
        )
        .then((response) {
          if (response.statusCode == 200) {
            final Map<String, dynamic> responseData = jsonDecode(response.body);
            return responseData;
          } else {
            throw Exception('Failed to refresh token');
          }
        });
    throw Exception('Failed to refresh token.');
  }
}
