# petstore_api.api.TokenApi

## Load the API package
```dart
import 'package:petstore_api/api.dart';
```

All URIs are relative to *https://deep-index.moralis.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllTokenIds**](TokenApi.md#getalltokenids) | **GET** /nft/{address} | Retrieves the unique NFTs inside a given contract
[**getContractNFTTransfers**](TokenApi.md#getcontractnfttransfers) | **GET** /nft/{address}/transfers | Gets NFT transfers of a given contract
[**getNFTLowestPrice**](TokenApi.md#getnftlowestprice) | **GET** /nft/{address}/lowestprice | Get the lowest price found for a nft token contract
[**getNFTMetadata**](TokenApi.md#getnftmetadata) | **GET** /nft/{address}/metadata | Gets the global metadata for a given contract
[**getNFTOwners**](TokenApi.md#getnftowners) | **GET** /nft/{address}/owners | Gets the owners of the NFTs of a given contract
[**getNFTTrades**](TokenApi.md#getnfttrades) | **GET** /nft/{address}/trades | Get nft trades by marketplaces
[**getNftTransfersFromToBlock**](TokenApi.md#getnfttransfersfromtoblock) | **GET** /nft/transfers | Gets NFT transfers from a block number to a block number
[**getTokenAddressTransfers**](TokenApi.md#gettokenaddresstransfers) | **GET** /erc20/{address}/transfers | Gets erc20 transactions of a token contract
[**getTokenAllowance**](TokenApi.md#gettokenallowance) | **GET** /erc20/{address}/allowance | Gets the amount which the spender is allowed to withdraw from the owner.
[**getTokenIdMetadata**](TokenApi.md#gettokenidmetadata) | **GET** /nft/{address}/{token_id} | Gets the NFT with the given id of a given contract
[**getTokenIdOwners**](TokenApi.md#gettokenidowners) | **GET** /nft/{address}/{token_id}/owners | Gets the owners of NFTs for a given contract
[**getTokenMetadata**](TokenApi.md#gettokenmetadata) | **GET** /erc20/metadata | Gets token metadata
[**getTokenMetadataBySymbol**](TokenApi.md#gettokenmetadatabysymbol) | **GET** /erc20/metadata/symbols | Gets token metadata
[**getTokenPrice**](TokenApi.md#gettokenprice) | **GET** /erc20/{address}/price | Gets token price
[**getWalletTokenIdTransfers**](TokenApi.md#getwallettokenidtransfers) | **GET** /nft/{address}/{token_id}/transfers | Gets NFT transfers of a given contract
[**searchNFTs**](TokenApi.md#searchnfts) | **GET** /nft/search | Retrieves the NFT data based on a metadata search
[**syncNFTContract**](TokenApi.md#syncnftcontract) | **PUT** /nft/{address}/sync | Sync a Contract for NFT Index


# **getAllTokenIds**
> NftCollection getAllTokenIds(address, chain, format, offset, limit)

Retrieves the unique NFTs inside a given contract

Gets data, including metadata (where available), for all token ids for the given contract address. * Results are sorted by the block the token id was minted (descending) and limited to 100 per page by default * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = address_example; // String | Address of the contract
final chain = ; // ChainList | The chain to query
final format = decimal; // String | The format of the token id
final offset = 56; // int | offset
final limit = 56; // int | limit

try {
    final result = api_instance.getAllTokenIds(address, chain, format, offset, limit);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getAllTokenIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address of the contract | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **format** | **String**| The format of the token id | [optional] [default to 'decimal']
 **offset** | **int**| offset | [optional] 
 **limit** | **int**| limit | [optional] 

### Return type

[**NftCollection**](NftCollection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractNFTTransfers**
> NftTransferCollection getContractNFTTransfers(address, chain, format, offset, limit, cursor)

Gets NFT transfers of a given contract

Gets the transfers of the tokens matching the given parameters

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = address_example; // String | Address of the contract
final chain = ; // ChainList | The chain to query
final format = decimal; // String | The format of the token id
final offset = 56; // int | offset
final limit = 56; // int | limit
final cursor = cursor_example; // String | The cursor returned in the last response (for getting the next page) 

try {
    final result = api_instance.getContractNFTTransfers(address, chain, format, offset, limit, cursor);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getContractNFTTransfers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address of the contract | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **format** | **String**| The format of the token id | [optional] [default to 'decimal']
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

# **getNFTLowestPrice**
> Trade getNFTLowestPrice(address, chain, days, providerUrl, marketplace)

Get the lowest price found for a nft token contract

Get the lowest price found for a nft token contract for the last x days (only trades paid in ETH)

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = 0xa2107fa5b38d9bbd2c461d6edf11b11a50f6b974; // String | Address of the contract
final chain = ; // ChainList | The chain to query
final days = 56; // int | The number of days to look back to find the lowest price If not provided 7 days will be the default 
final providerUrl = providerUrl_example; // String | web3 provider url to user when using local dev chain
final marketplace = opensea; // String | marketplace from where to get the trades (only opensea is supported at the moment)

try {
    final result = api_instance.getNFTLowestPrice(address, chain, days, providerUrl, marketplace);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getNFTLowestPrice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address of the contract | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **days** | **int**| The number of days to look back to find the lowest price If not provided 7 days will be the default  | [optional] 
 **providerUrl** | **String**| web3 provider url to user when using local dev chain | [optional] 
 **marketplace** | **String**| marketplace from where to get the trades (only opensea is supported at the moment) | [optional] [default to 'opensea']

### Return type

[**Trade**](Trade.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNFTMetadata**
> NftContractMetadata getNFTMetadata(address, chain)

Gets the global metadata for a given contract

Gets the contract level metadata (name, symbol, base token uri) for the given contract * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = address_example; // String | Address of the contract
final chain = ; // ChainList | The chain to query

try {
    final result = api_instance.getNFTMetadata(address, chain);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getNFTMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address of the contract | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 

### Return type

[**NftContractMetadata**](NftContractMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNFTOwners**
> NftOwnerCollection getNFTOwners(address, chain, format, offset, limit)

Gets the owners of the NFTs of a given contract

Gets all owners of NFT items within a given contract collection * Use after /nft/contract/{token_address} to find out who owns each token id in a collection * Make sure to include a sort parm on a column like block_number_minted for consistent pagination results * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = address_example; // String | Address of the contract
final chain = ; // ChainList | The chain to query
final format = decimal; // String | The format of the token id
final offset = 56; // int | offset
final limit = 56; // int | limit

try {
    final result = api_instance.getNFTOwners(address, chain, format, offset, limit);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getNFTOwners: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address of the contract | 
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

# **getNFTTrades**
> TradeCollection getNFTTrades(address, chain, fromBlock, toBlock, fromDate, toDate, providerUrl, marketplace, offset, limit)

Get nft trades by marketplaces

Get the nft trades for a given contracts and marketplace

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = 0xa2107fa5b38d9bbd2c461d6edf11b11a50f6b974; // String | Address of the contract
final chain = ; // ChainList | The chain to query
final fromBlock = 56; // int | The minimum block number from where to get the transfers * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toBlock = toBlock_example; // String | To get the reserves at this block number
final fromDate = fromDate_example; // String | The date from where to get the transfers (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toDate = toDate_example; // String | Get the reserves to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final providerUrl = providerUrl_example; // String | web3 provider url to user when using local dev chain
final marketplace = opensea; // String | marketplace from where to get the trades (only opensea is supported at the moment)
final offset = 56; // int | offset
final limit = 56; // int | limit

try {
    final result = api_instance.getNFTTrades(address, chain, fromBlock, toBlock, fromDate, toDate, providerUrl, marketplace, offset, limit);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getNFTTrades: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address of the contract | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **fromBlock** | **int**| The minimum block number from where to get the transfers * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toBlock** | **String**| To get the reserves at this block number | [optional] 
 **fromDate** | **String**| The date from where to get the transfers (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toDate** | **String**| Get the reserves to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **providerUrl** | **String**| web3 provider url to user when using local dev chain | [optional] 
 **marketplace** | **String**| marketplace from where to get the trades (only opensea is supported at the moment) | [optional] [default to 'opensea']
 **offset** | **int**| offset | [optional] 
 **limit** | **int**| limit | [optional] 

### Return type

[**TradeCollection**](TradeCollection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftTransfersFromToBlock**
> NftTransferCollection getNftTransfersFromToBlock(chain, fromBlock, toBlock, fromDate, UNKNOWN_PARAMETER_NAME, format, offset, limit, cursor)

Gets NFT transfers from a block number to a block number

Gets the transfers of the tokens from a block number to a block number

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final chain = ; // ChainList | The chain to query
final fromBlock = 56; // int | The minimum block number from where to get the transfers * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toBlock = 56; // int | The maximum block number from where to get the transfers. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final fromDate = fromDate_example; // String | The date from where to get the transfers (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final UNKNOWN_PARAMETER_NAME = ; //  | Get transfers up until this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final format = decimal; // String | The format of the token id
final offset = 56; // int | offset
final limit = 56; // int | limit
final cursor = cursor_example; // String | The cursor returned in the last response (for getting the next page) 

try {
    final result = api_instance.getNftTransfersFromToBlock(chain, fromBlock, toBlock, fromDate, UNKNOWN_PARAMETER_NAME, format, offset, limit, cursor);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getNftTransfersFromToBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **fromBlock** | **int**| The minimum block number from where to get the transfers * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toBlock** | **int**| The maximum block number from where to get the transfers. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **fromDate** | **String**| The date from where to get the transfers (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **UNKNOWN_PARAMETER_NAME** | [****](.md)| Get transfers up until this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **format** | **String**| The format of the token id | [optional] [default to 'decimal']
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

# **getTokenAddressTransfers**
> Erc20TransactionCollection getTokenAddressTransfers(address, chain, subdomain, fromBlock, toBlock, fromDate, toDate, offset, limit)

Gets erc20 transactions of a token contract

Gets ERC20 token contract transactions in descending order based on block number

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = address_example; // String | The address of the token contract
final chain = ; // ChainList | The chain to query
final subdomain = subdomain_example; // String | The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
final fromBlock = 56; // int | The minimum block number from where to get the transfers * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toBlock = 56; // int | The maximum block number from where to get the transfers. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final fromDate = fromDate_example; // String | The date from where to get the transfers (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toDate = toDate_example; // String | Get the transfers to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final offset = 56; // int | offset
final limit = 56; // int | limit

try {
    final result = api_instance.getTokenAddressTransfers(address, chain, subdomain, fromBlock, toBlock, fromDate, toDate, offset, limit);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getTokenAddressTransfers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| The address of the token contract | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **subdomain** | **String**| The subdomain of the moralis server to use (Only use when selecting local devchain as chain) | [optional] 
 **fromBlock** | **int**| The minimum block number from where to get the transfers * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toBlock** | **int**| The maximum block number from where to get the transfers. * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **fromDate** | **String**| The date from where to get the transfers (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toDate** | **String**| Get the transfers to this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
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

# **getTokenAllowance**
> Erc20Allowance getTokenAllowance(address, ownerAddress, spenderAddress, chain, providerUrl)

Gets the amount which the spender is allowed to withdraw from the owner.

Gets the amount which the spender is allowed to withdraw from the spender

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = address_example; // String | The address of the token contract
final ownerAddress = ownerAddress_example; // String | The address of the token owner
final spenderAddress = spenderAddress_example; // String | The address of the token spender
final chain = ; // ChainList | The chain to query
final providerUrl = providerUrl_example; // String | web3 provider url to user when using local dev chain

try {
    final result = api_instance.getTokenAllowance(address, ownerAddress, spenderAddress, chain, providerUrl);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getTokenAllowance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| The address of the token contract | 
 **ownerAddress** | **String**| The address of the token owner | 
 **spenderAddress** | **String**| The address of the token spender | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **providerUrl** | **String**| web3 provider url to user when using local dev chain | [optional] 

### Return type

[**Erc20Allowance**](Erc20Allowance.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTokenIdMetadata**
> Nft getTokenIdMetadata(address, tokenId, chain, format)

Gets the NFT with the given id of a given contract

Gets data, including metadata (where available), for the given token id of the given contract address. * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = address_example; // String | Address of the contract
final tokenId = tokenId_example; // String | The id of the token
final chain = ; // ChainList | The chain to query
final format = decimal; // String | The format of the token id

try {
    final result = api_instance.getTokenIdMetadata(address, tokenId, chain, format);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getTokenIdMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address of the contract | 
 **tokenId** | **String**| The id of the token | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **format** | **String**| The format of the token id | [optional] [default to 'decimal']

### Return type

[**Nft**](Nft.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTokenIdOwners**
> NftOwnerCollection getTokenIdOwners(address, tokenId, chain, format, offset, limit)

Gets the owners of NFTs for a given contract

Gets all owners of NFT items within a given contract collection * Use after /nft/contract/{token_address} to find out who owns each token id in a collection * Make sure to include a sort parm on a column like block_number_minted for consistent pagination results * Requests for contract addresses not yet indexed will automatically start the indexing process for that NFT collection 

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = address_example; // String | Address of the contract
final tokenId = tokenId_example; // String | The id of the token
final chain = ; // ChainList | The chain to query
final format = decimal; // String | The format of the token id
final offset = 56; // int | offset
final limit = 56; // int | limit

try {
    final result = api_instance.getTokenIdOwners(address, tokenId, chain, format, offset, limit);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getTokenIdOwners: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address of the contract | 
 **tokenId** | **String**| The id of the token | 
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

# **getTokenMetadata**
> List<Erc20Metadata> getTokenMetadata(addresses, chain, subdomain, providerUrl)

Gets token metadata

Returns metadata (name, symbol, decimals, logo) for a given token contract address.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final addresses = []; // List<String> | The addresses to get metadata for
final chain = ; // ChainList | The chain to query
final subdomain = subdomain_example; // String | The subdomain of the moralis server to use (Only use when selecting local devchain as chain)
final providerUrl = providerUrl_example; // String | web3 provider url to user when using local dev chain

try {
    final result = api_instance.getTokenMetadata(addresses, chain, subdomain, providerUrl);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getTokenMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addresses** | [**List<String>**](String.md)| The addresses to get metadata for | [default to const []]
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **subdomain** | **String**| The subdomain of the moralis server to use (Only use when selecting local devchain as chain) | [optional] 
 **providerUrl** | **String**| web3 provider url to user when using local dev chain | [optional] 

### Return type

[**List<Erc20Metadata>**](Erc20Metadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTokenMetadataBySymbol**
> List<Erc20Metadata> getTokenMetadataBySymbol(symbols, chain, subdomain)

Gets token metadata

Returns metadata (name, symbol, decimals, logo) for a given token contract address.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final symbols = []; // List<String> | The symbols to get metadata for
final chain = ; // ChainList | The chain to query
final subdomain = subdomain_example; // String | The subdomain of the moralis server to use (Only use when selecting local devchain as chain)

try {
    final result = api_instance.getTokenMetadataBySymbol(symbols, chain, subdomain);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getTokenMetadataBySymbol: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbols** | [**List<String>**](String.md)| The symbols to get metadata for | [default to const []]
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **subdomain** | **String**| The subdomain of the moralis server to use (Only use when selecting local devchain as chain) | [optional] 

### Return type

[**List<Erc20Metadata>**](Erc20Metadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTokenPrice**
> Erc20Price getTokenPrice(address, chain, providerUrl, exchange, toBlock)

Gets token price

Returns the price nominated in the native token and usd for a given token contract address.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = address_example; // String | The address of the token contract
final chain = ; // ChainList | The chain to query
final providerUrl = providerUrl_example; // String | web3 provider url to user when using local dev chain
final exchange = exchange_example; // String | The factory name or address of the token exchange
final toBlock = 56; // int | to_block

try {
    final result = api_instance.getTokenPrice(address, chain, providerUrl, exchange, toBlock);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getTokenPrice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| The address of the token contract | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **providerUrl** | **String**| web3 provider url to user when using local dev chain | [optional] 
 **exchange** | **String**| The factory name or address of the token exchange | [optional] 
 **toBlock** | **int**| to_block | [optional] 

### Return type

[**Erc20Price**](Erc20Price.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletTokenIdTransfers**
> NftTransferCollection getWalletTokenIdTransfers(address, tokenId, chain, format, offset, limit, order, cursor)

Gets NFT transfers of a given contract

Gets the transfers of the tokens matching the given parameters

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = address_example; // String | Address of the contract
final tokenId = tokenId_example; // String | The id of the token
final chain = ; // ChainList | The chain to query
final format = decimal; // String | The format of the token id
final offset = 56; // int | offset
final limit = 56; // int | limit
final order = order_example; // String | The field(s) to order on and if it should be ordered in ascending or descending order. Specified by: fieldName1.order,fieldName2.order. Example 1: \"block_number\", \"block_number.ASC\", \"block_number.DESC\", Example 2: \"block_number and contract_type\", \"block_number.ASC,contract_type.DESC\"
final cursor = cursor_example; // String | The cursor returned in the last response (for getting the next page) 

try {
    final result = api_instance.getWalletTokenIdTransfers(address, tokenId, chain, format, offset, limit, order, cursor);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->getWalletTokenIdTransfers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address of the contract | 
 **tokenId** | **String**| The id of the token | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **format** | **String**| The format of the token id | [optional] [default to 'decimal']
 **offset** | **int**| offset | [optional] 
 **limit** | **int**| limit | [optional] 
 **order** | **String**| The field(s) to order on and if it should be ordered in ascending or descending order. Specified by: fieldName1.order,fieldName2.order. Example 1: \"block_number\", \"block_number.ASC\", \"block_number.DESC\", Example 2: \"block_number and contract_type\", \"block_number.ASC,contract_type.DESC\" | [optional] 
 **cursor** | **String**| The cursor returned in the last response (for getting the next page)  | [optional] 

### Return type

[**NftTransferCollection**](NftTransferCollection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchNFTs**
> NftMetadataCollection searchNFTs(q, chain, format, filter, fromBlock, toBlock, fromDate, toDate, offset, limit)

Retrieves the NFT data based on a metadata search

Gets NFTs that match a given metadata search.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final q = q_example; // String | The search string
final chain = ; // ChainList | The chain to query
final format = decimal; // String | The format of the token id
final filter = name; // String | What fields the search should match on. To look into the entire metadata set the value to 'global'. To have a better response time you can look into a specific field like name
final fromBlock = 56; // int | The minimum block number from where to start the search * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toBlock = 56; // int | The maximum block number from where to end the search * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final fromDate = fromDate_example; // String | The date from where to start the search (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used. 
final toDate = toDate_example; // String | Get search results up until this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used. 
final offset = 56; // int | offset
final limit = 56; // int | limit

try {
    final result = api_instance.searchNFTs(q, chain, format, filter, fromBlock, toBlock, fromDate, toDate, offset, limit);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->searchNFTs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The search string | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 
 **format** | **String**| The format of the token id | [optional] [default to 'decimal']
 **filter** | **String**| What fields the search should match on. To look into the entire metadata set the value to 'global'. To have a better response time you can look into a specific field like name | [optional] [default to 'global']
 **fromBlock** | **int**| The minimum block number from where to start the search * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toBlock** | **int**| The maximum block number from where to end the search * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **fromDate** | **String**| The date from where to start the search (any format that is accepted by momentjs) * Provide the param 'from_block' or 'from_date' * If 'from_date' and 'from_block' are provided, 'from_block' will be used.  | [optional] 
 **toDate** | **String**| Get search results up until this date (any format that is accepted by momentjs) * Provide the param 'to_block' or 'to_date' * If 'to_date' and 'to_block' are provided, 'to_block' will be used.  | [optional] 
 **offset** | **int**| offset | [optional] 
 **limit** | **int**| limit | [optional] 

### Return type

[**NftMetadataCollection**](NftMetadataCollection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncNFTContract**
> syncNFTContract(address, chain)

Sync a Contract for NFT Index

Sync a Contract for NFT Index 

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TokenApi();
final address = address_example; // String | Address of the contract
final chain = ; // ChainList | The chain to query

try {
    api_instance.syncNFTContract(address, chain);
} catch (e) {
    print('Exception when calling TokenApi->syncNFTContract: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address of the contract | 
 **chain** | [**ChainList**](.md)| The chain to query | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

