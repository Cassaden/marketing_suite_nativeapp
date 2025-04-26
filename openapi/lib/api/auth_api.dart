//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthApi {
  AuthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /auth/login/' operation and returns the [Response].
  Future<Response> authLoginCreateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/auth/login/';

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

  Future<void> authLoginCreate() async {
    final response = await authLoginCreateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /auth/register/' operation and returns the [Response].
  Future<Response> authRegisterCreateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/auth/register/';

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

  Future<void> authRegisterCreate() async {
    final response = await authRegisterCreateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /auth/user_profiles/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [UserProfile] userProfile (required):
  Future<Response> authUserProfilesCreateWithHttpInfo(
    UserProfile userProfile,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/user_profiles/';

    // ignore: prefer_final_locals
    Object? postBody = userProfile;

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
  /// * [UserProfile] userProfile (required):
  Future<UserProfile?> authUserProfilesCreate(
    UserProfile userProfile,
  ) async {
    final response = await authUserProfilesCreateWithHttpInfo(
      userProfile,
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
        'UserProfile',
      ) as UserProfile;
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /auth/user_profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this user profile.
  Future<Response> authUserProfilesDestroyWithHttpInfo(
    int id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/user_profiles/{id}/'.replaceAll('{id}', id.toString());

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
  ///   A unique integer value identifying this user profile.
  Future<void> authUserProfilesDestroy(
    int id,
  ) async {
    final response = await authUserProfilesDestroyWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /auth/user_profiles/' operation and returns the [Response].
  Future<Response> authUserProfilesListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/auth/user_profiles/';

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

  Future<List<UserProfile>?> authUserProfilesList() async {
    final response = await authUserProfilesListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(
              responseBody, 'List<UserProfile>') as List)
          .cast<UserProfile>()
          .toList(growable: false);
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /auth/user_profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this user profile.
  ///
  /// * [PatchedUserProfile] patchedUserProfile:
  Future<Response> authUserProfilesPartialUpdateWithHttpInfo(
    int id, {
    PatchedUserProfile? patchedUserProfile,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/user_profiles/{id}/'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedUserProfile;

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
  ///   A unique integer value identifying this user profile.
  ///
  /// * [PatchedUserProfile] patchedUserProfile:
  Future<UserProfile?> authUserProfilesPartialUpdate(
    int id, {
    PatchedUserProfile? patchedUserProfile,
  }) async {
    final response = await authUserProfilesPartialUpdateWithHttpInfo(
      id,
      patchedUserProfile: patchedUserProfile,
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
        'UserProfile',
      ) as UserProfile;
    }
    return null;
  }

  /// Performs an HTTP 'GET /auth/user_profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this user profile.
  Future<Response> authUserProfilesRetrieveWithHttpInfo(
    int id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/user_profiles/{id}/'.replaceAll('{id}', id.toString());

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
  ///   A unique integer value identifying this user profile.
  Future<UserProfile?> authUserProfilesRetrieve(
    int id,
  ) async {
    final response = await authUserProfilesRetrieveWithHttpInfo(
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
        'UserProfile',
      ) as UserProfile;
    }
    return null;
  }

  /// Performs an HTTP 'PUT /auth/user_profiles/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this user profile.
  ///
  /// * [UserProfile] userProfile (required):
  Future<Response> authUserProfilesUpdateWithHttpInfo(
    int id,
    UserProfile userProfile,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/user_profiles/{id}/'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = userProfile;

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
  ///   A unique integer value identifying this user profile.
  ///
  /// * [UserProfile] userProfile (required):
  Future<UserProfile?> authUserProfilesUpdate(
    int id,
    UserProfile userProfile,
  ) async {
    final response = await authUserProfilesUpdateWithHttpInfo(
      id,
      userProfile,
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
        'UserProfile',
      ) as UserProfile;
    }
    return null;
  }
}
