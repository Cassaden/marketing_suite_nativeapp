import 'package:openapi/api.dart' as openapi;

class ApiClient extends openapi.ApiClient {
  static openapi.ApiClient? clientInstance;

  static openapi.ApiClient getInstance() {
    if (clientInstance == null) {
      final authentication = openapi.HttpBearerAuth();
      authentication.accessToken =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzQ1NzkxNjgzLCJpYXQiOjE3NDU3MDUyODMsImp0aSI6ImYzZTlmYmZlOTIyNTQ1YWFhYTQ3YzI1ODczZDY5MDRkIiwidXNlcl9pZCI6MX0.xqELpW-R72zXxf-hx0_1mF5nGeUJfxA8ft-hXsK9v1I';
      clientInstance = openapi.ApiClient(
        basePath: 'http://localhost:8000',
        authentication: authentication,
      );
    }

    return clientInstance!;
  }
}
