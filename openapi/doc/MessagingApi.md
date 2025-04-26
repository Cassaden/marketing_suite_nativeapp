# openapi.api.MessagingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**messagingSendSmsCreate**](MessagingApi.md#messagingsendsmscreate) | **POST** /messaging/send_sms/ | 
[**messagingTemplatesCreate**](MessagingApi.md#messagingtemplatescreate) | **POST** /messaging/templates/ | 
[**messagingTemplatesDestroy**](MessagingApi.md#messagingtemplatesdestroy) | **DELETE** /messaging/templates/{id}/ | 
[**messagingTemplatesList**](MessagingApi.md#messagingtemplateslist) | **GET** /messaging/templates/ | 
[**messagingTemplatesPartialUpdate**](MessagingApi.md#messagingtemplatespartialupdate) | **PATCH** /messaging/templates/{id}/ | 
[**messagingTemplatesRetrieve**](MessagingApi.md#messagingtemplatesretrieve) | **GET** /messaging/templates/{id}/ | 
[**messagingTemplatesUpdate**](MessagingApi.md#messagingtemplatesupdate) | **PUT** /messaging/templates/{id}/ | 


# **messagingSendSmsCreate**
> messagingSendSmsCreate()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MessagingApi();

try {
    api_instance.messagingSendSmsCreate();
} catch (e) {
    print('Exception when calling MessagingApi->messagingSendSmsCreate: $e\n');
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

# **messagingTemplatesCreate**
> MessageTemplate messagingTemplatesCreate(messageTemplate)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MessagingApi();
final messageTemplate = MessageTemplate(); // MessageTemplate | 

try {
    final result = api_instance.messagingTemplatesCreate(messageTemplate);
    print(result);
} catch (e) {
    print('Exception when calling MessagingApi->messagingTemplatesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageTemplate** | [**MessageTemplate**](MessageTemplate.md)|  | 

### Return type

[**MessageTemplate**](MessageTemplate.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messagingTemplatesDestroy**
> messagingTemplatesDestroy(id)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MessagingApi();
final id = 56; // int | A unique integer value identifying this message template.

try {
    api_instance.messagingTemplatesDestroy(id);
} catch (e) {
    print('Exception when calling MessagingApi->messagingTemplatesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this message template. | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messagingTemplatesList**
> List<MessageTemplate> messagingTemplatesList()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MessagingApi();

try {
    final result = api_instance.messagingTemplatesList();
    print(result);
} catch (e) {
    print('Exception when calling MessagingApi->messagingTemplatesList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MessageTemplate>**](MessageTemplate.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messagingTemplatesPartialUpdate**
> MessageTemplate messagingTemplatesPartialUpdate(id, patchedMessageTemplate)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MessagingApi();
final id = 56; // int | A unique integer value identifying this message template.
final patchedMessageTemplate = PatchedMessageTemplate(); // PatchedMessageTemplate | 

try {
    final result = api_instance.messagingTemplatesPartialUpdate(id, patchedMessageTemplate);
    print(result);
} catch (e) {
    print('Exception when calling MessagingApi->messagingTemplatesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this message template. | 
 **patchedMessageTemplate** | [**PatchedMessageTemplate**](PatchedMessageTemplate.md)|  | [optional] 

### Return type

[**MessageTemplate**](MessageTemplate.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messagingTemplatesRetrieve**
> MessageTemplate messagingTemplatesRetrieve(id)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MessagingApi();
final id = 56; // int | A unique integer value identifying this message template.

try {
    final result = api_instance.messagingTemplatesRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling MessagingApi->messagingTemplatesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this message template. | 

### Return type

[**MessageTemplate**](MessageTemplate.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messagingTemplatesUpdate**
> MessageTemplate messagingTemplatesUpdate(id, messageTemplate)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MessagingApi();
final id = 56; // int | A unique integer value identifying this message template.
final messageTemplate = MessageTemplate(); // MessageTemplate | 

try {
    final result = api_instance.messagingTemplatesUpdate(id, messageTemplate);
    print(result);
} catch (e) {
    print('Exception when calling MessagingApi->messagingTemplatesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this message template. | 
 **messageTemplate** | [**MessageTemplate**](MessageTemplate.md)|  | 

### Return type

[**MessageTemplate**](MessageTemplate.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

