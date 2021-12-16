# petstore_api.api.AccountApi

## Load the API package
```dart
import 'package:petstore_api/api.dart';
```

All URIs are relative to *https://deep-index.moralis.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getNFTTransfers**](AccountApi.md#getnfttransfers) | **GET** /{address}/nft/transfers | Gets NFT transfers to and from a given address
[**getNFTs**](AccountApi.md#getnfts) | **GET** /{address}/nft | Gets the NFTs owned by a given address
[**getNFTsForContract**](AccountApi.md#getnftsforcontract) | **GET** /{address}/nft/{token_address} | Gets the NFTs owned by a given address
[**getNativeBalance**](AccountApi.md#getnativebalance) | **GET** /{address}/balance | Gets native balance for a specific address.
[**getTokenBalances**](AccountApi.md#gettokenbalances) | **GET** /{address}/erc20 | Gets token balances for a specific address.
[**getTokenTransfers**](AccountApi.md#gettokentransfers) | **GET** /{address}/erc20/transfers | Gets erc 20 token transactions
[**getTransactions**](AccountApi.md#gettransactions) | **GET** /{address} | Gets native transactions


# **getNFTTransfers**
> NftTransferCollection getNFTTransfers(address, chain, format, direction, offset, limit, cursor)

Gets NFT transfers to and from a given address

Gets the transfers of the tokens matching the given parameters

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AccountApi();
final address = address_example; // String | The sender or recepient of the transfer
final chain = ; // ChainList | The chain to query
final format = decimal; // String | The format of the token id
final direction = both; // String | The transfer direction
final offset = 56; // int | offset
final limit = 56; // int | limit
final cursor = cursor_example; // String | The cursor returned in the last response (for getting the next page) 

try {
    final result = api_instance.getNFTTransfers(address, chain, format, direction, offset, limit, cursor);
    print(result);
} catch (e) {
    print('Exception when calling AccountApi->getNFTTransfers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| The sender or recepient of the transfer | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **format** | **String**| The format of the token id | [optional] [default to 'decimal']
 **direction** | **String**| The transfer direction | [optional] [default to 'both']
 **offset** | **int**| offset | [optional] 
 **limit** | **int**| limit | [optional] 
 **cursor** | **String**| The cursor returned in the last response (for getting the next page)  | [optional] 

### Return type

[**NftTransferCollection**](NftTransferCollection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNFTs**
> NftOwnerCollection getNFTs(address, chain, format, offset, limit)

Gets the NFTs owned by a given address

Gets NFTs owned by the given address * The response will include status [SYNCED/SYNCING] based on the contracts being indexed. * Use the token_address param to get results for a specific contract only * Note results will include all indexed NFTs * Any request which includes the token_address param will start the indexing process for that NFT collection the very first time it is requested 

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AccountApi();
final address = address_example; // String | The owner of a given token
final chain = ; // ChainList | The chain to query
final format = decimal; // String | The format of the token id
final offset = 56; // int | offset
final limit = 56; // int | limit

try {
    final result = api_instance.getNFTs(address, chain, format, offset, limit);
    print(result);
} catch (e) {
    print('Exception when calling AccountApi->getNFTs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| The owner of a given token | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **format** | **String**| The format of the token id | [optional] [default to 'decimal']
 **offset** | **int**| offset | [optional] 
 **limit** | **int**| limit | [optional] 

### Return type

[**NftOwnerCollection**](NftOwnerCollection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNFTsForContract**
> NftOwnerCollection getNFTsForContract(address, tokenAddress, chain, format, offset, limit)

Gets the NFTs owned by a given address

Gets NFTs owned by the given address * Use the token_address param to get results for a specific contract only * Note results will include all indexed NFTs * Any request which includes the token_address param will start the indexing process for that NFT collection the very first time it is requested 

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AccountApi();
final address = address_example; // String | The owner of a given token
final tokenAddress = tokenAddress_example; // String | Address of the contract
final chain = ; // ChainList | The chain to query
final format = decimal; // String | The format of the token id
final offset = 56; // int | offset
final limit = 56; // int | limit

try {
    final result = api_instance.getNFTsForContract(address, tokenAddress, chain, format, offset, limit);
    print(result);
} catch (e) {
    print('Exception when calling AccountApi->getNFTsForContract: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| The owner of a given token | 
 **tokenAddress** | **String**| Address of the contract | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **format** | **String**| The format of the token id | [optional] [default to 'decimal']
 **offset** | **int**| offset | [optional] 
 **limit** | **int**| limit | [optional] 

### Return type

[**NftOwnerCollection**](NftOwnerCollection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNativeBalance**
> NativeBalance getNativeBalance(address, chain, providerUrl, toBlock)

Gets native balance for a specific address.

Gets native balance for a specific address

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AccountApi();
final address = 0x057Ec652A4F150f7FF94f089A38008f49a0DF88e; // String | The address for which the native balance will be checked
final chain = ; // ChainList | The chain to query
final providerUrl = providerUrl_example; // String | web3 provider url to user when using local dev chain
final toBlock = 8.14; // num | The block number on which the balances should be checked

try {
    final result = api_instance.getNativeBalance(address, chain, providerUrl, toBlock);
    print(result);
} catch (e) {
    print('Exception when calling AccountApi->getNativeBalance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| The address for which the native balance will be checked | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **providerUrl** | **String**| web3 provider url to user when using local dev chain | [optional] 
 **toBlock** | **num**| The block number on which the balances should be checked | [optional] 

### Return type

[**NativeBalance**](NativeBalance.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTokenBalances**
> List<Erc20TokenBalance> getTokenBalances(address, chain, subdomain, toBlock)

Gets token balances for a specific address.

Gets token balances for a specific address

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AccountApi();
final address = 0x057Ec652A4F150f7FF94f089A38008f49a0DF88e; // String | The address for which token balances will be checked
final chain = ; // ChainList | The chain to query
final subdomain = subdomain_example; // String | The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
final toBlock = 8.14; // num | The block number on which the balances should be checked

try {
    final result = api_instance.getTokenBalances(address, chain, subdomain, toBlock);
    print(result);
} catch (e) {
    print('Exception when calling AccountApi->getTokenBalances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| The address for which token balances will be checked | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **subdomain** | **String**| The subdomain of the moralis server to use (Only use when selecting local devchain as chain) | [optional] 
 **toBlock** | **num**| The block number on which the balances should be checked | [optional] 

### Return type

[**List<Erc20TokenBalance>**](Erc20TokenBalance.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTokenTransfers**
> Erc20TransactionCollection getTokenTransfers(address, chain, subdomain, fromBlock, toBlock, fromDate, toDate, offset, limit)

Gets erc 20 token transactions

Gets ERC20 token transactions in descending order based on block number

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AccountApi();
final address = address_example; // String | address
final chain = ; // ChainList | The chain to query
final subdomain = subdomain_example; // String | The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
final fromBlock = 56; // int | The minimum block number from where to get the transactions * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toBlock = 56; // int | The maximum block number from where to get the transactions. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final fromDate = fromDate_example; // String | The date from where to get the transactions (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toDate = toDate_example; // String | Get the transactions to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final offset = 56; // int | offset
final limit = 56; // int | limit

try {
    final result = api_instance.getTokenTransfers(address, chain, subdomain, fromBlock, toBlock, fromDate, toDate, offset, limit);
    print(result);
} catch (e) {
    print('Exception when calling AccountApi->getTokenTransfers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| address | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **subdomain** | **String**| The subdomain of the moralis server to use (Only use when selecting local devchain as chain) | [optional] 
 **fromBlock** | **int**| The minimum block number from where to get the transactions * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toBlock** | **int**| The maximum block number from where to get the transactions. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **fromDate** | **String**| The date from where to get the transactions (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toDate** | **String**| Get the transactions to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **offset** | **int**| offset | [optional] 
 **limit** | **int**| limit | [optional] 

### Return type

[**Erc20TransactionCollection**](Erc20TransactionCollection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactions**
> TransactionCollection getTransactions(address, chain, subdomain, fromBlock, toBlock, fromDate, toDate, offset, limit)

Gets native transactions

Gets native transactions in descending order based on block number

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AccountApi();
final address = address_example; // String | address
final chain = ; // ChainList | The chain to query
final subdomain = subdomain_example; // String | The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
final fromBlock = 56; // int | The minimum block number from where to get the transactions * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toBlock = 56; // int | The maximum block number from where to get the transactions. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final fromDate = fromDate_example; // String | The date from where to get the transactions (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toDate = toDate_example; // String | Get the transactions to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final offset = 56; // int | offset
final limit = 56; // int | limit

try {
    final result = api_instance.getTransactions(address, chain, subdomain, fromBlock, toBlock, fromDate, toDate, offset, limit);
    print(result);
} catch (e) {
    print('Exception when calling AccountApi->getTransactions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| address | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **subdomain** | **String**| The subdomain of the moralis server to use (Only use when selecting local devchain as chain) | [optional] 
 **fromBlock** | **int**| The minimum block number from where to get the transactions * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toBlock** | **int**| The maximum block number from where to get the transactions. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **fromDate** | **String**| The date from where to get the transactions (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toDate** | **String**| Get the transactions to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **offset** | **int**| offset | [optional] 
 **limit** | **int**| limit | [optional] 

### Return type

[**TransactionCollection**](TransactionCollection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

