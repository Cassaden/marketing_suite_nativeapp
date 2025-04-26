//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CampaignsApi {
  CampaignsApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /campaigns/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Campaign] campaign (required):
  Future<Response> campaignsCreateWithHttpInfo(
    Campaign campaign,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/campaigns/';

    // ignore: prefer_final_locals
    Object? postBody = campaign;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[
      'application/json',
      'application/x-www-form-urlencoded',
      'multipart/form-data'
    ];

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
  /// * [Campaign] campaign (required):
  Future<Campaign?> campaignsCreate(
    Campaign campaign,
  ) async {
    final response = await campaignsCreateWithHttpInfo(
      campaign,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Campaign',
      ) as Campaign;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /campaigns/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this campaign.
  Future<Response> campaignsDestroyWithHttpInfo(
    int id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/campaigns/{id}/'.replaceAll('{id}', id.toString());

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
  ///   A unique integer value identifying this campaign.
  Future<void> campaignsDestroy(
    int id,
  ) async {
    final response = await campaignsDestroyWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /campaigns/' operation and returns the [Response].
  Future<Response> campaignsListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/campaigns/';

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

  Future<List<Campaign>?> campaignsList() async {
    final response = await campaignsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Campaign>')
              as List)
          .cast<Campaign>()
          .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /campaigns/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this campaign.
  ///
  /// * [PatchedCampaign] patchedCampaign:
  Future<Response> campaignsPartialUpdateWithHttpInfo(
    int id, {
    PatchedCampaign? patchedCampaign,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/campaigns/{id}/'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedCampaign;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[
      'application/json',
      'application/x-www-form-urlencoded',
      'multipart/form-data'
    ];

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
  ///   A unique integer value identifying this campaign.
  ///
  /// * [PatchedCampaign] patchedCampaign:
  Future<Campaign?> campaignsPartialUpdate(
    int id, {
    PatchedCampaign? patchedCampaign,
  }) async {
    final response = await campaignsPartialUpdateWithHttpInfo(
      id,
      patchedCampaign: patchedCampaign,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Campaign',
      ) as Campaign;
    }
    return null;
  }

  /// Performs an HTTP 'GET /campaigns/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this campaign.
  Future<Response> campaignsRetrieveWithHttpInfo(
    int id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/campaigns/{id}/'.replaceAll('{id}', id.toString());

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
  ///   A unique integer value identifying this campaign.
  Future<Campaign?> campaignsRetrieve(
    int id,
  ) async {
    final response = await campaignsRetrieveWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Campaign',
      ) as Campaign;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /campaigns/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this campaign.
  ///
  /// * [Campaign] campaign (required):
  Future<Response> campaignsUpdateWithHttpInfo(
    int id,
    Campaign campaign,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/campaigns/{id}/'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = campaign;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[
      'application/json',
      'application/x-www-form-urlencoded',
      'multipart/form-data'
    ];

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
  ///   A unique integer value identifying this campaign.
  ///
  /// * [Campaign] campaign (required):
  Future<Campaign?> campaignsUpdate(
    int id,
    Campaign campaign,
  ) async {
    final response = await campaignsUpdateWithHttpInfo(
      id,
      campaign,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Campaign',
      ) as Campaign;
    }
    return null;
  }
}
