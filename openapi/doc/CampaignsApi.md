# openapi.api.CampaignsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**campaignsCreate**](CampaignsApi.md#campaignscreate) | **POST** /campaigns/ | 
[**campaignsDestroy**](CampaignsApi.md#campaignsdestroy) | **DELETE** /campaigns/{id}/ | 
[**campaignsList**](CampaignsApi.md#campaignslist) | **GET** /campaigns/ | 
[**campaignsPartialUpdate**](CampaignsApi.md#campaignspartialupdate) | **PATCH** /campaigns/{id}/ | 
[**campaignsRetrieve**](CampaignsApi.md#campaignsretrieve) | **GET** /campaigns/{id}/ | 
[**campaignsUpdate**](CampaignsApi.md#campaignsupdate) | **PUT** /campaigns/{id}/ | 


# **campaignsCreate**
> Campaign campaignsCreate(campaign)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();
final campaign = Campaign(); // Campaign | 

try {
    final result = api_instance.campaignsCreate(campaign);
    print(result);
} catch (e) {
    print('Exception when calling CampaignsApi->campaignsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**Campaign**](Campaign.md)|  | 

### Return type

[**Campaign**](Campaign.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **campaignsDestroy**
> campaignsDestroy(id)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();
final id = 56; // int | A unique integer value identifying this campaign.

try {
    api_instance.campaignsDestroy(id);
} catch (e) {
    print('Exception when calling CampaignsApi->campaignsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this campaign. | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **campaignsList**
> List<Campaign> campaignsList()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();

try {
    final result = api_instance.campaignsList();
    print(result);
} catch (e) {
    print('Exception when calling CampaignsApi->campaignsList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Campaign>**](Campaign.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **campaignsPartialUpdate**
> Campaign campaignsPartialUpdate(id, patchedCampaign)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();
final id = 56; // int | A unique integer value identifying this campaign.
final patchedCampaign = PatchedCampaign(); // PatchedCampaign | 

try {
    final result = api_instance.campaignsPartialUpdate(id, patchedCampaign);
    print(result);
} catch (e) {
    print('Exception when calling CampaignsApi->campaignsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this campaign. | 
 **patchedCampaign** | [**PatchedCampaign**](PatchedCampaign.md)|  | [optional] 

### Return type

[**Campaign**](Campaign.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **campaignsRetrieve**
> Campaign campaignsRetrieve(id)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();
final id = 56; // int | A unique integer value identifying this campaign.

try {
    final result = api_instance.campaignsRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling CampaignsApi->campaignsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this campaign. | 

### Return type

[**Campaign**](Campaign.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **campaignsUpdate**
> Campaign campaignsUpdate(id, campaign)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();
final id = 56; // int | A unique integer value identifying this campaign.
final campaign = Campaign(); // Campaign | 

try {
    final result = api_instance.campaignsUpdate(id, campaign);
    print(result);
} catch (e) {
    print('Exception when calling CampaignsApi->campaignsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this campaign. | 
 **campaign** | [**Campaign**](Campaign.md)|  | 

### Return type

[**Campaign**](Campaign.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

