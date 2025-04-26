# openapi.api.ContactsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contactsCreate**](ContactsApi.md#contactscreate) | **POST** /contacts/ | 
[**contactsDestroy**](ContactsApi.md#contactsdestroy) | **DELETE** /contacts/{id}/ | 
[**contactsGetSettingsRetrieve**](ContactsApi.md#contactsgetsettingsretrieve) | **GET** /contacts/{id}/get_settings/ | 
[**contactsList**](ContactsApi.md#contactslist) | **GET** /contacts/ | 
[**contactsPartialUpdate**](ContactsApi.md#contactspartialupdate) | **PATCH** /contacts/{id}/ | 
[**contactsRetrieve**](ContactsApi.md#contactsretrieve) | **GET** /contacts/{id}/ | 
[**contactsUpdate**](ContactsApi.md#contactsupdate) | **PUT** /contacts/{id}/ | 


# **contactsCreate**
> Contact contactsCreate(contact)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final contact = Contact(); // Contact | 

try {
    final result = api_instance.contactsCreate(contact);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->contactsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact** | [**Contact**](Contact.md)|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactsDestroy**
> contactsDestroy(id)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = 56; // int | A unique integer value identifying this contact.

try {
    api_instance.contactsDestroy(id);
} catch (e) {
    print('Exception when calling ContactsApi->contactsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this contact. | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactsGetSettingsRetrieve**
> Contact contactsGetSettingsRetrieve(id)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = 56; // int | A unique integer value identifying this contact.

try {
    final result = api_instance.contactsGetSettingsRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->contactsGetSettingsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this contact. | 

### Return type

[**Contact**](Contact.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactsList**
> List<Contact> contactsList()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();

try {
    final result = api_instance.contactsList();
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->contactsList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Contact>**](Contact.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactsPartialUpdate**
> Contact contactsPartialUpdate(id, patchedContact)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = 56; // int | A unique integer value identifying this contact.
final patchedContact = PatchedContact(); // PatchedContact | 

try {
    final result = api_instance.contactsPartialUpdate(id, patchedContact);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->contactsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this contact. | 
 **patchedContact** | [**PatchedContact**](PatchedContact.md)|  | [optional] 

### Return type

[**Contact**](Contact.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactsRetrieve**
> Contact contactsRetrieve(id)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = 56; // int | A unique integer value identifying this contact.

try {
    final result = api_instance.contactsRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->contactsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this contact. | 

### Return type

[**Contact**](Contact.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactsUpdate**
> Contact contactsUpdate(id, contact)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = 56; // int | A unique integer value identifying this contact.
final contact = Contact(); // Contact | 

try {
    final result = api_instance.contactsUpdate(id, contact);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->contactsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this contact. | 
 **contact** | [**Contact**](Contact.md)|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

