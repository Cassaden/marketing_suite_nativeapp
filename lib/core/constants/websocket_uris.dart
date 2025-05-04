import 'dart:io';

abstract class WebSocketUris {
  static final String baseUrl =
      Platform.environment['BASE_API_URL'] ??
      ( // For desktop local dev.
      const bool.hasEnvironment('BASE_API_URL')
          ? // For mobile local dev.
          const String.fromEnvironment('BASE_API_URL')
          : 'http://localhost:8001/');
}
