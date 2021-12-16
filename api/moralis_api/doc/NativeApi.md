# petstore_api.api.NativeApi

## Load the API package
```dart
import 'package:petstore_api/api.dart';
```

All URIs are relative to *https://deep-index.moralis.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBlock**](NativeApi.md#getblock) | **GET** /block/{block_number_or_hash} | Gets block contents by block hash
[**getContractEvents**](NativeApi.md#getcontractevents) | **POST** /{address}/events | Gets events by topic
[**getDateToBlock**](NativeApi.md#getdatetoblock) | **GET** /dateToBlock | Gets the closest block of the provided date
[**getLogsByAddress**](NativeApi.md#getlogsbyaddress) | **GET** /{address}/logs | Gets address logs
[**getNFTTransfersByBlock**](NativeApi.md#getnfttransfersbyblock) | **GET** /block/{block_number_or_hash}/nft/transfers | Gets NFT transfers by block number or block hash
[**getTransaction**](NativeApi.md#gettransaction) | **GET** /transaction/{transaction_hash} | Get transaction details by transaction hash
[**runContractFunction**](NativeApi.md#runcontractfunction) | **POST** /{address}/function | Runs a function of a contract abi


# **getBlock**
> Block getBlock(blockNumberOrHash, chain, subdomain)

Gets block contents by block hash

Gets the contents of a block by block hash

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = NativeApi();
final blockNumberOrHash = blockNumberOrHash_example; // String | The block hash or block number
final chain = ; // ChainList | The chain to query
final subdomain = subdomain_example; // String | The subdomain of the moralis server to use (Only use when selecting local devchain as chain)

try {
    final result = api_instance.getBlock(blockNumberOrHash, chain, subdomain);
    print(result);
} catch (e) {
    print('Exception when calling NativeApi->getBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockNumberOrHash** | **String**| The block hash or block number | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **subdomain** | **String**| The subdomain of the moralis server to use (Only use when selecting local devchain as chain) | [optional] 

### Return type

[**Block**](Block.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractEvents**
> List<LogEvent> getContractEvents(address, topic, chain, subdomain, providerUrl, fromBlock, toBlock, fromDate, toDate, offset, limit, body)

Gets events by topic

Gets events in descending order based on block number

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = NativeApi();
final address = address_example; // String | address
final topic = topic_example; // String | The topic of the event
final chain = ; // ChainList | The chain to query
final subdomain = subdomain_example; // String | The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
final providerUrl = providerUrl_example; // String | web3 provider url to user when using local dev chain
final fromBlock = 56; // int | The minimum block number from where to get the logs * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toBlock = 56; // int | The maximum block number from where to get the logs. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final fromDate = fromDate_example; // String | The date from where to get the logs (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toDate = toDate_example; // String | Get the logs to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final offset = 56; // int | offset
final limit = 56; // int | limit
final body = Object(); // Object | ABI of the specific event

try {
    final result = api_instance.getContractEvents(address, topic, chain, subdomain, providerUrl, fromBlock, toBlock, fromDate, toDate, offset, limit, body);
    print(result);
} catch (e) {
    print('Exception when calling NativeApi->getContractEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| address | 
 **topic** | **String**| The topic of the event | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **subdomain** | **String**| The subdomain of the moralis server to use (Only use when selecting local devchain as chain) | [optional] 
 **providerUrl** | **String**| web3 provider url to user when using local dev chain | [optional] 
 **fromBlock** | **int**| The minimum block number from where to get the logs * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toBlock** | **int**| The maximum block number from where to get the logs. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **fromDate** | **String**| The date from where to get the logs (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toDate** | **String**| Get the logs to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **offset** | **int**| offset | [optional] 
 **limit** | **int**| limit | [optional] 
 **body** | **Object**| ABI of the specific event | [optional] 

### Return type

[**List<LogEvent>**](LogEvent.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDateToBlock**
> BlockDate getDateToBlock(date, chain, providerUrl)

Gets the closest block of the provided date

Gets the closest block of the provided date

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = NativeApi();
final date = date_example; // String | Unix date in miliseconds or a datestring (any format that is accepted by momentjs)
final chain = ; // ChainList | The chain to query
final providerUrl = providerUrl_example; // String | web3 provider url to user when using local dev chain

try {
    final result = api_instance.getDateToBlock(date, chain, providerUrl);
    print(result);
} catch (e) {
    print('Exception when calling NativeApi->getDateToBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **String**| Unix date in miliseconds or a datestring (any format that is accepted by momentjs) | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **providerUrl** | **String**| web3 provider url to user when using local dev chain | [optional] 

### Return type

[**BlockDate**](BlockDate.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLogsByAddress**
> LogEventByAddress getLogsByAddress(address, chain, subdomain, blockNumber, fromBlock, toBlock, fromDate, toDate, topic0, topic1, topic2, topic3)

Gets address logs

Gets the logs from an address

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = NativeApi();
final address = address_example; // String | address
final chain = ; // ChainList | The chain to query
final subdomain = subdomain_example; // String | The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
final blockNumber = blockNumber_example; // String | The block number * Provide the param 'block_numer' or ('from_block' and / or 'to_block') * If 'block_numer' is provided in conbinaison with 'from_block' and / or 'to_block', 'block_number' will will be used 
final fromBlock = fromBlock_example; // String | The minimum block number from where to get the logs * Provide the param 'block_numer' or ('from_block' and / or 'to_block') * If 'block_numer' is provided in conbinaison with 'from_block' and / or 'to_block', 'block_number' will will be used 
final toBlock = toBlock_example; // String | The maximum block number from where to get the logs * Provide the param 'block_numer' or ('from_block' and / or 'to_block') * If 'block_numer' is provided in conbinaison with 'from_block' and / or 'to_block', 'block_number' will will be used 
final fromDate = fromDate_example; // String | The date from where to get the logs (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. * If 'from_date' and the block params are provided, the block params will be used. Please refer to the blocks params sections (block_number,from_block and to_block) on how to use them 
final toDate = toDate_example; // String | Get the logs to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. * If 'to_date' and the block params are provided, the block params will be used. Please refer to the blocks params sections (block_number,from_block and to_block) on how to use them 
final topic0 = topic0_example; // String | topic0
final topic1 = topic1_example; // String | topic1
final topic2 = topic2_example; // String | topic2
final topic3 = topic3_example; // String | topic3

try {
    final result = api_instance.getLogsByAddress(address, chain, subdomain, blockNumber, fromBlock, toBlock, fromDate, toDate, topic0, topic1, topic2, topic3);
    print(result);
} catch (e) {
    print('Exception when calling NativeApi->getLogsByAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| address | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **subdomain** | **String**| The subdomain of the moralis server to use (Only use when selecting local devchain as chain) | [optional] 
 **blockNumber** | **String**| The block number * Provide the param 'block_numer' or ('from_block' and / or 'to_block') * If 'block_numer' is provided in conbinaison with 'from_block' and / or 'to_block', 'block_number' will will be used  | [optional] 
 **fromBlock** | **String**| The minimum block number from where to get the logs * Provide the param 'block_numer' or ('from_block' and / or 'to_block') * If 'block_numer' is provided in conbinaison with 'from_block' and / or 'to_block', 'block_number' will will be used  | [optional] 
 **toBlock** | **String**| The maximum block number from where to get the logs * Provide the param 'block_numer' or ('from_block' and / or 'to_block') * If 'block_numer' is provided in conbinaison with 'from_block' and / or 'to_block', 'block_number' will will be used  | [optional] 
 **fromDate** | **String**| The date from where to get the logs (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. * If 'from_date' and the block params are provided, the block params will be used. Please refer to the blocks params sections (block_number,from_block and to_block) on how to use them  | [optional] 
 **toDate** | **String**| Get the logs to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. * If 'to_date' and the block params are provided, the block params will be used. Please refer to the blocks params sections (block_number,from_block and to_block) on how to use them  | [optional] 
 **topic0** | **String**| topic0 | [optional] 
 **topic1** | **String**| topic1 | [optional] 
 **topic2** | **String**| topic2 | [optional] 
 **topic3** | **String**| topic3 | [optional] 

### Return type

[**LogEventByAddress**](LogEventByAddress.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNFTTransfersByBlock**
> NftTransferCollection getNFTTransfersByBlock(blockNumberOrHash, chain, subdomain, offset, limit, cursor)

Gets NFT transfers by block number or block hash

Gets NFT transfers by block number or block hash

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = NativeApi();
final blockNumberOrHash = blockNumberOrHash_example; // String | The block hash or block number
final chain = ; // ChainList | The chain to query
final subdomain = subdomain_example; // String | The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
final offset = 56; // int | offset
final limit = 56; // int | limit
final cursor = cursor_example; // String | The cursor returned in the last response (for getting the next page) 

try {
    final result = api_instance.getNFTTransfersByBlock(blockNumberOrHash, chain, subdomain, offset, limit, cursor);
    print(result);
} catch (e) {
    print('Exception when calling NativeApi->getNFTTransfersByBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockNumberOrHash** | **String**| The block hash or block number | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **subdomain** | **String**| The subdomain of the moralis server to use (Only use when selecting local devchain as chain) | [optional] 
 **offset** | **int**| offset | [optional] 
 **limit** | **int**| limit | [optional] [default to 500]
 **cursor** | **String**| The cursor returned in the last response (for getting the next page)  | [optional] 

### Return type

[**NftTransferCollection**](NftTransferCollection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransaction**
> BlockTransaction getTransaction(transactionHash, chain, subdomain)

Get transaction details by transaction hash

Gets the contents of a block transaction by hash

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = NativeApi();
final transactionHash = 0xdc85cb1b75fd09c2f6d001fea4aba83764193cbd7881a1fa8ccde350a5681109; // String | The transaction hash
final chain = ; // ChainList | The chain to query
final subdomain = subdomain_example; // String | The subdomain of the moralis server to use (Only use when selecting local devchain as chain)

try {
    final result = api_instance.getTransaction(transactionHash, chain, subdomain);
    print(result);
} catch (e) {
    print('Exception when calling NativeApi->getTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionHash** | **String**| The transaction hash | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **subdomain** | **String**| The subdomain of the moralis server to use (Only use when selecting local devchain as chain) | [optional] 

### Return type

[**BlockTransaction**](BlockTransaction.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runContractFunction**
> String runContractFunction(address, functionName, runContractDto, chain, subdomain, providerUrl)

Runs a function of a contract abi

Runs a given function of a contract abi and returns readonly data

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = NativeApi();
final address = address_example; // String | address
final functionName = functionName_example; // String | function_name
final runContractDto = RunContractDto(); // RunContractDto | Body
final chain = ; // ChainList | The chain to query
final subdomain = subdomain_example; // String | The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
final providerUrl = providerUrl_example; // String | web3 provider url to user when using local dev chain

try {
    final result = api_instance.runContractFunction(address, functionName, runContractDto, chain, subdomain, providerUrl);
    print(result);
} catch (e) {
    print('Exception when calling NativeApi->runContractFunction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| address | 
 **functionName** | **String**| function_name | 
 **runContractDto** | [**RunContractDto**](RunContractDto.md)| Body | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **subdomain** | **String**| The subdomain of the moralis server to use (Only use when selecting local devchain as chain) | [optional] 
 **providerUrl** | **String**| web3 provider url to user when using local dev chain | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

