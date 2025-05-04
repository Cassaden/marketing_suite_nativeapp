import 'dart:io';

abstract class ApiUris {
  static final String baseUrl =
      Platform.environment['BASE_API_URL'] ??
      ( // For desktop local dev.
      const bool.hasEnvironment('BASE_API_URL')
          ? // For mobile local dev.
          const String.fromEnvironment('BASE_API_URL')
          : 'http://localhost:8000/');

  static final String register = '${baseUrl}auth/register/';
  static final String login = '${baseUrl}auth/login/';
  static final String logout = '${baseUrl}auth/logout/';
  static final String refresh = '${baseUrl}auth/refresh/';
  static final String verifyEmail = '${baseUrl}auth/verify-email/';
  static final String resetPassword = '${baseUrl}auth/reset-password/';
  static final String resetPasswordConfirm =
      '${baseUrl}auth/reset-password-confirm/';
  static final String changePassword = '${baseUrl}auth/change-password/';
  static final String getUserProfile = '${baseUrl}auth/user-profile/';
}
