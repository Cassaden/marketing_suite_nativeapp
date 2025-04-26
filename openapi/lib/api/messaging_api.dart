//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MessagingApi {
  MessagingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /messaging/send_sms/' operation and returns the [Response].
  Future<Response> messagingSendSmsCreateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/messaging/send_sms/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<void> messagingSendSmsCreate() async {
    final response = await messagingSendSmsCreateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /messaging/templates/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [MessageTemplate] messageTemplate (required):
  Future<Response> messagingTemplatesCreateWithHttpInfo(MessageTemplate messageTemplate,) async {
    // ignore: prefer_const_declarations
    final path = r'/messaging/templates/';

    // ignore: prefer_final_locals
    Object? postBody = messageTemplate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [MessageTemplate] messageTemplate (required):
  Future<MessageTemplate?> messagingTemplatesCreate(MessageTemplate messageTemplate,) async {
    final response = await messagingTemplatesCreateWithHttpInfo(messageTemplate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageTemplate',) as MessageTemplate;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /messaging/templates/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this message template.
  Future<Response> messagingTemplatesDestroyWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/messaging/templates/{id}/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this message template.
  Future<void> messagingTemplatesDestroy(int id,) async {
    final response = await messagingTemplatesDestroyWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /messaging/templates/' operation and returns the [Response].
  Future<Response> messagingTemplatesListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/messaging/templates/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<List<MessageTemplate>?> messagingTemplatesList() async {
    final response = await messagingTemplatesListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageTemplate>') as List)
        .cast<MessageTemplate>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /messaging/templates/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this message template.
  ///
  /// * [PatchedMessageTemplate] patchedMessageTemplate:
  Future<Response> messagingTemplatesPartialUpdateWithHttpInfo(int id, { PatchedMessageTemplate? patchedMessageTemplate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/messaging/templates/{id}/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedMessageTemplate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this message template.
  ///
  /// * [PatchedMessageTemplate] patchedMessageTemplate:
  Future<MessageTemplate?> messagingTemplatesPartialUpdate(int id, { PatchedMessageTemplate? patchedMessageTemplate, }) async {
    final response = await messagingTemplatesPartialUpdateWithHttpInfo(id,  patchedMessageTemplate: patchedMessageTemplate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageTemplate',) as MessageTemplate;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /messaging/templates/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this message template.
  Future<Response> messagingTemplatesRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/messaging/templates/{id}/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this message template.
  Future<MessageTemplate?> messagingTemplatesRetrieve(int id,) async {
    final response = await messagingTemplatesRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageTemplate',) as MessageTemplate;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /messaging/templates/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this message template.
  ///
  /// * [MessageTemplate] messageTemplate (required):
  Future<Response> messagingTemplatesUpdateWithHttpInfo(int id, MessageTemplate messageTemplate,) async {
    // ignore: prefer_const_declarations
    final path = r'/messaging/templates/{id}/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = messageTemplate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this message template.
  ///
  /// * [MessageTemplate] messageTemplate (required):
  Future<MessageTemplate?> messagingTemplatesUpdate(int id, MessageTemplate messageTemplate,) async {
    final response = await messagingTemplatesUpdateWithHttpInfo(id, messageTemplate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageTemplate',) as MessageTemplate;
    
    }
    return null;
  }
}
