# petstore_api.model.NftTransfer

## Load the model package
```dart
import 'package:petstore_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tokenAddress** | **String** | The address of the contract of the NFT | 
**tokenId** | **String** | The token id of the NFT | 
**fromAddress** | **String** | The address that sent the NFT | [optional] 
**toAddress** | **String** | The address that recieved the NFT | 
**value** | **String** | The value that was sent in the transaction (ETH/BNB/etc..) | [optional] 
**amount** | **String** | The number of tokens transferred | [optional] 
**contractType** | **String** | The type of NFT contract standard | 
**blockNumber** | **String** | The blocknumber of the transaction | 
**blockTimestamp** | **String** | The block timestamp | 
**blockHash** | **String** | The block hash of the transaction | 
**transactionHash** | **String** | The transaction hash | 
**transactionType** | **String** | The transaction type | [optional] 
**transactionIndex** | **String** | The transaction index | [optional] 
**logIndex** | **int** | The log index | 
**operator_** | **String** | The operator present only for ERC1155 Transfers | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


