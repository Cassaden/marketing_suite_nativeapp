# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authLoginCreate**](AuthApi.md#authlogincreate) | **POST** /auth/login/ | 
[**authRegisterCreate**](AuthApi.md#authregistercreate) | **POST** /auth/register/ | 
[**authUserProfilesCreate**](AuthApi.md#authuserprofilescreate) | **POST** /auth/user_profiles/ | 
[**authUserProfilesDestroy**](AuthApi.md#authuserprofilesdestroy) | **DELETE** /auth/user_profiles/{id}/ | 
[**authUserProfilesList**](AuthApi.md#authuserprofileslist) | **GET** /auth/user_profiles/ | 
[**authUserProfilesPartialUpdate**](AuthApi.md#authuserprofilespartialupdate) | **PATCH** /auth/user_profiles/{id}/ | 
[**authUserProfilesRetrieve**](AuthApi.md#authuserprofilesretrieve) | **GET** /auth/user_profiles/{id}/ | 
[**authUserProfilesUpdate**](AuthApi.md#authuserprofilesupdate) | **PUT** /auth/user_profiles/{id}/ | 


# **authLoginCreate**
> authLoginCreate()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();

try {
    api_instance.authLoginCreate();
} catch (e) {
    print('Exception when calling AuthApi->authLoginCreate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRegisterCreate**
> authRegisterCreate()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();

try {
    api_instance.authRegisterCreate();
} catch (e) {
    print('Exception when calling AuthApi->authRegisterCreate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserProfilesCreate**
> UserProfile authUserProfilesCreate(userProfile)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();
final userProfile = UserProfile(); // UserProfile | 

try {
    final result = api_instance.authUserProfilesCreate(userProfile);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authUserProfilesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfile** | [**UserProfile**](UserProfile.md)|  | 

### Return type

[**UserProfile**](UserProfile.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserProfilesDestroy**
> authUserProfilesDestroy(id)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();
final id = 56; // int | A unique integer value identifying this user profile.

try {
    api_instance.authUserProfilesDestroy(id);
} catch (e) {
    print('Exception when calling AuthApi->authUserProfilesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this user profile. | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserProfilesList**
> List<UserProfile> authUserProfilesList()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();

try {
    final result = api_instance.authUserProfilesList();
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authUserProfilesList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserProfile>**](UserProfile.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserProfilesPartialUpdate**
> UserProfile authUserProfilesPartialUpdate(id, patchedUserProfile)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();
final id = 56; // int | A unique integer value identifying this user profile.
final patchedUserProfile = PatchedUserProfile(); // PatchedUserProfile | 

try {
    final result = api_instance.authUserProfilesPartialUpdate(id, patchedUserProfile);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authUserProfilesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this user profile. | 
 **patchedUserProfile** | [**PatchedUserProfile**](PatchedUserProfile.md)|  | [optional] 

### Return type

[**UserProfile**](UserProfile.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserProfilesRetrieve**
> UserProfile authUserProfilesRetrieve(id)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();
final id = 56; // int | A unique integer value identifying this user profile.

try {
    final result = api_instance.authUserProfilesRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authUserProfilesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this user profile. | 

### Return type

[**UserProfile**](UserProfile.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserProfilesUpdate**
> UserProfile authUserProfilesUpdate(id, userProfile)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();
final id = 56; // int | A unique integer value identifying this user profile.
final userProfile = UserProfile(); // UserProfile | 

try {
    final result = api_instance.authUserProfilesUpdate(id, userProfile);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authUserProfilesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this user profile. | 
 **userProfile** | [**UserProfile**](UserProfile.md)|  | 

### Return type

[**UserProfile**](UserProfile.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

