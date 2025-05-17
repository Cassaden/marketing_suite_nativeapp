import 'package:openapi/api.dart' as openapi;

import 'package:app/core/constants/api_uris.dart';
import 'package:app/features/auth/data/auth.repositories.dart';

class ApiClient extends openapi.ApiClient {
  ApiClient._();

  static openapi.ApiClient? clientInstance;

  static Future<openapi.ApiClient> getInstance() async {
    if (clientInstance == null) {
      final authentication = openapi.HttpBearerAuth();
      authentication.accessToken = await AuthRepository.getCurrentAccessToken();

      clientInstance = openapi.ApiClient(
        basePath: ApiUris.baseUrl,
        authentication: authentication,
      );
    }

    return clientInstance!;
  }

  static Future<openapi.ApiClient> get instance => getInstance();
}
