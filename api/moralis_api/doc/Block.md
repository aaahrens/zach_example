# petstore_api.model.Block

## Load the model package
```dart
import 'package:petstore_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | **String** | The block timestamp | 
**number** | **String** | The block number | 
**hash** | **String** | The block hash | 
**parentHash** | **String** | The block hash of the parent block | 
**nonce** | **String** | The nonce | 
**sha3Uncles** | **String** |  | 
**logsBloom** | **String** |  | 
**transactionsRoot** | **String** |  | 
**stateRoot** | **String** |  | 
**receiptsRoot** | **String** |  | 
**miner** | **String** | The address of the miner | 
**difficulty** | **String** | The difficulty of the block | 
**totalDifficulty** | **String** | The total difficulty | 
**size** | **String** | The block size | 
**extraData** | **String** |  | 
**gasLimit** | **String** | The gas limit | 
**gasUsed** | **String** | The gas used | 
**transactionCount** | **String** | The number of transactions in the block | 
**transactions** | [**List<BlockTransaction>**](BlockTransaction.md) | The transactions in the block | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


