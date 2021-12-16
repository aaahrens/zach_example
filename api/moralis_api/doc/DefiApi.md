# petstore_api.api.DefiApi

## Load the API package
```dart
import 'package:petstore_api/api.dart';
```

All URIs are relative to *https://deep-index.moralis.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPairAddress**](DefiApi.md#getpairaddress) | **GET** /{token0_address}/{token1_address}/pairAddress | Get pair address based on token0 and token1 address
[**getPairReserves**](DefiApi.md#getpairreserves) | **GET** /{pair_address}/reserves | Get liquidity pair reserves


# **getPairAddress**
> ReservesCollection getPairAddress(exchange, token0Address, token1Address, chain, toBlock, toDate)

Get pair address based on token0 and token1 address

Fetches and returns pair data of the provided token0+token1 combination. The token0 and token1 options are interchangable (ie. there is no different outcome in \"token0=WETH and token1=USDT\" or \"token0=USDT and token1=WETH\") 

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefiApi();
final exchange = uniswapv2; // String | The factory name or address of the token exchange
final token0Address = 0x2b591e99afe9f32eaa6214f7b7629768c40eeb39; // String | Token0 address
final token1Address = 0xdac17f958d2ee523a2206206994597c13d831ec7; // String | Token1 address
final chain = ; // ChainList | The chain to query
final toBlock = toBlock_example; // String | To get the reserves at this block number
final toDate = toDate_example; // String | Get the reserves to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 

try {
    final result = api_instance.getPairAddress(exchange, token0Address, token1Address, chain, toBlock, toDate);
    print(result);
} catch (e) {
    print('Exception when calling DefiApi->getPairAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange** | **String**| The factory name or address of the token exchange | 
 **token0Address** | **String**| Token0 address | 
 **token1Address** | **String**| Token1 address | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **toBlock** | **String**| To get the reserves at this block number | [optional] 
 **toDate** | **String**| Get the reserves to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 

### Return type

[**ReservesCollection**](ReservesCollection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPairReserves**
> ReservesCollection getPairReserves(pairAddress, chain, toBlock, toDate, providerUrl)

Get liquidity pair reserves

Get the liquidity reserves for a given pair address

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefiApi();
final pairAddress = 0xa2107fa5b38d9bbd2c461d6edf11b11a50f6b974; // String | Liquidity pair address
final chain = ; // ChainList | The chain to query
final toBlock = toBlock_example; // String | To get the reserves at this block number
final toDate = toDate_example; // String | Get the reserves to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final providerUrl = providerUrl_example; // String | web3 provider url to user when using local dev chain

try {
    final result = api_instance.getPairReserves(pairAddress, chain, toBlock, toDate, providerUrl);
    print(result);
} catch (e) {
    print('Exception when calling DefiApi->getPairReserves: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pairAddress** | **String**| Liquidity pair address | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **toBlock** | **String**| To get the reserves at this block number | [optional] 
 **toDate** | **String**| Get the reserves to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **providerUrl** | **String**| web3 provider url to user when using local dev chain | [optional] 

### Return type

[**ReservesCollection**](ReservesCollection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

