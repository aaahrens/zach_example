# petstore_api.api.ResolveApi

## Load the API package
```dart
import 'package:petstore_api/api.dart';
```

All URIs are relative to *https://deep-index.moralis.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resolveAddress**](ResolveApi.md#resolveaddress) | **GET** /resolve/{address}/reverse | Return the ENS domain when available (Only for ETH)
[**resolveDomain**](ResolveApi.md#resolvedomain) | **GET** /resolve/{domain} | Resolves an Unstoppable domain and returns the address


# **resolveAddress**
> Ens resolveAddress(address)

Return the ENS domain when available (Only for ETH)

Resolves an ETH address and find the ENS name 

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ResolveApi();
final address = 0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045; // String | The address to be resolved

try {
    final result = api_instance.resolveAddress(address);
    print(result);
} catch (e) {
    print('Exception when calling ResolveApi->resolveAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| The address to be resolved | 

### Return type

[**Ens**](Ens.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveDomain**
> Resolve resolveDomain(domain, currency)

Resolves an Unstoppable domain and returns the address

Resolves an Unstoppable domain and returns the address 

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ResolveApi();
final domain = brad.crypto; // String | Domain to be resolved
final currency = eth; // String | The currency to query

try {
    final result = api_instance.resolveDomain(domain, currency);
    print(result);
} catch (e) {
    print('Exception when calling ResolveApi->resolveDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| Domain to be resolved | 
 **currency** | **String**| The currency to query | [optional] [default to 'eth']

### Return type

[**Resolve**](Resolve.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

