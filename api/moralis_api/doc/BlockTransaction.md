# petstore_api.model.BlockTransaction

## Load the model package
```dart
import 'package:petstore_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** | The hash of the transaction | 
**nonce** | **String** | The nonce | 
**transactionIndex** | **String** |  | 
**fromAddress** | **String** | The from address | 
**toAddress** | **String** | The to address | 
**value** | **String** | The value sent | 
**gas** | **String** |  | [optional] 
**gasPrice** | **String** | The gas price | 
**input** | **String** |  | 
**receiptCumulativeGasUsed** | **String** |  | 
**receiptGasUsed** | **String** |  | 
**receiptContractAddress** | **String** |  | [optional] 
**receiptRoot** | **String** |  | [optional] 
**receiptStatus** | **String** |  | 
**blockTimestamp** | **String** | The block timestamp | 
**blockNumber** | **String** | The block number | 
**blockHash** | **String** | The hash of the block | 
**logs** | [**List<Log>**](Log.md) | The logs of the transaction | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


