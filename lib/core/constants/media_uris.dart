import 'dart:io';

class MediaUris {
  static final String baseMediaUrl =
      Platform.environment['BASE_MEDIA_URL'] ??
      ( // For desktop local dev.
      const bool.hasEnvironment('BASE_MEDIA_URL')
          ? // For mobile local dev.
          const String.fromEnvironment('BASE_MEDIA_URL')
          : 'http://localhost:8003/');
}
