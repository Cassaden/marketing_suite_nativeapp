import 'package:openapi/api.dart' as openapi;

import 'package:app/core/constants/api_uris.dart';
import 'package:app/core/repositories/auth.dart';

class ApiClient extends openapi.ApiClient {
  ApiClient._();

  static openapi.ApiClient? clientInstance;

  static openapi.ApiClient getInstance() {
    if (clientInstance == null) {
      final authentication = openapi.HttpBearerAuth();
      authentication.accessToken = AuthRepository.getCurrentAccessToken();

      clientInstance = openapi.ApiClient(
        basePath: ApiUris.baseUrl,
        authentication: authentication,
      );
    }

    return clientInstance!;
  }

  static openapi.ApiClient get instance => getInstance();
}
