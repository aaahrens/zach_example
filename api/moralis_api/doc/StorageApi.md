# petstore_api.api.StorageApi

## Load the API package
```dart
import 'package:petstore_api/api.dart';
```

All URIs are relative to *https://deep-index.moralis.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploadFolder**](StorageApi.md#uploadfolder) | **POST** /ipfs/uploadFolder | Uploads multiple files and place them in a folder directory


# **uploadFolder**
> List<IpfsFile> uploadFolder(ipfsFileRequest)

Uploads multiple files and place them in a folder directory

Uploads multiple files and place them in a folder directory 

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = StorageApi();
final ipfsFileRequest = [List<IpfsFileRequest>()]; // List<IpfsFileRequest> | Array of JSON and Base64 Supported

try {
    final result = api_instance.uploadFolder(ipfsFileRequest);
    print(result);
} catch (e) {
    print('Exception when calling StorageApi->uploadFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ipfsFileRequest** | [**List<IpfsFileRequest>**](IpfsFileRequest.md)| Array of JSON and Base64 Supported | [optional] 

### Return type

[**List<IpfsFile>**](IpfsFile.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

