//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BlockTransaction {
  /// Returns a new [BlockTransaction] instance.
  BlockTransaction({
    @required this.hash,
    @required this.nonce,
    @required this.transactionIndex,
    @required this.fromAddress,
    @required this.toAddress,
    @required this.value,
    this.gas,
    @required this.gasPrice,
    @required this.input,
    @required this.receiptCumulativeGasUsed,
    @required this.receiptGasUsed,
    this.receiptContractAddress,
    this.receiptRoot,
    @required this.receiptStatus,
    @required this.blockTimestamp,
    @required this.blockNumber,
    @required this.blockHash,
    this.logs = const [],
  });

  /// The hash of the transaction
  String hash;

  /// The nonce
  String nonce;

  String transactionIndex;

  /// The from address
  String fromAddress;

  /// The to address
  String toAddress;

  /// The value sent
  String value;

  String gas;

  /// The gas price
  String gasPrice;

  String input;

  String receiptCumulativeGasUsed;

  String receiptGasUsed;

  String receiptContractAddress;

  String receiptRoot;

  String receiptStatus;

  /// The block timestamp
  String blockTimestamp;

  /// The block number
  String blockNumber;

  /// The hash of the block
  String blockHash;

  /// The logs of the transaction
  List<Log> logs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlockTransaction &&
     other.hash == hash &&
     other.nonce == nonce &&
     other.transactionIndex == transactionIndex &&
     other.fromAddress == fromAddress &&
     other.toAddress == toAddress &&
     other.value == value &&
     other.gas == gas &&
     other.gasPrice == gasPrice &&
     other.input == input &&
     other.receiptCumulativeGasUsed == receiptCumulativeGasUsed &&
     other.receiptGasUsed == receiptGasUsed &&
     other.receiptContractAddress == receiptContractAddress &&
     other.receiptRoot == receiptRoot &&
     other.receiptStatus == receiptStatus &&
     other.blockTimestamp == blockTimestamp &&
     other.blockNumber == blockNumber &&
     other.blockHash == blockHash &&
     other.logs == logs;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (hash == null ? 0 : hash.hashCode) +
    (nonce == null ? 0 : nonce.hashCode) +
    (transactionIndex == null ? 0 : transactionIndex.hashCode) +
    (fromAddress == null ? 0 : fromAddress.hashCode) +
    (toAddress == null ? 0 : toAddress.hashCode) +
    (value == null ? 0 : value.hashCode) +
    (gas == null ? 0 : gas.hashCode) +
    (gasPrice == null ? 0 : gasPrice.hashCode) +
    (input == null ? 0 : input.hashCode) +
    (receiptCumulativeGasUsed == null ? 0 : receiptCumulativeGasUsed.hashCode) +
    (receiptGasUsed == null ? 0 : receiptGasUsed.hashCode) +
    (receiptContractAddress == null ? 0 : receiptContractAddress.hashCode) +
    (receiptRoot == null ? 0 : receiptRoot.hashCode) +
    (receiptStatus == null ? 0 : receiptStatus.hashCode) +
    (blockTimestamp == null ? 0 : blockTimestamp.hashCode) +
    (blockNumber == null ? 0 : blockNumber.hashCode) +
    (blockHash == null ? 0 : blockHash.hashCode) +
    (logs == null ? 0 : logs.hashCode);

  @override
  String toString() => 'BlockTransaction[hash=$hash, nonce=$nonce, transactionIndex=$transactionIndex, fromAddress=$fromAddress, toAddress=$toAddress, value=$value, gas=$gas, gasPrice=$gasPrice, input=$input, receiptCumulativeGasUsed=$receiptCumulativeGasUsed, receiptGasUsed=$receiptGasUsed, receiptContractAddress=$receiptContractAddress, receiptRoot=$receiptRoot, receiptStatus=$receiptStatus, blockTimestamp=$blockTimestamp, blockNumber=$blockNumber, blockHash=$blockHash, logs=$logs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hash'] = hash;
      json[r'nonce'] = nonce;
      json[r'transaction_index'] = transactionIndex;
      json[r'from_address'] = fromAddress;
      json[r'to_address'] = toAddress;
      json[r'value'] = value;
    if (gas != null) {
      json[r'gas'] = gas;
    }
      json[r'gas_price'] = gasPrice;
      json[r'input'] = input;
      json[r'receipt_cumulative_gas_used'] = receiptCumulativeGasUsed;
      json[r'receipt_gas_used'] = receiptGasUsed;
    if (receiptContractAddress != null) {
      json[r'receipt_contract_address'] = receiptContractAddress;
    }
    if (receiptRoot != null) {
      json[r'receipt_root'] = receiptRoot;
    }
      json[r'receipt_status'] = receiptStatus;
      json[r'block_timestamp'] = blockTimestamp;
      json[r'block_number'] = blockNumber;
      json[r'block_hash'] = blockHash;
      json[r'logs'] = logs;
    return json;
  }

  /// Returns a new [BlockTransaction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlockTransaction fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BlockTransaction(
        hash: mapValueOfType<String>(json, r'hash'),
        nonce: mapValueOfType<String>(json, r'nonce'),
        transactionIndex: mapValueOfType<String>(json, r'transaction_index'),
        fromAddress: mapValueOfType<String>(json, r'from_address'),
        toAddress: mapValueOfType<String>(json, r'to_address'),
        value: mapValueOfType<String>(json, r'value'),
        gas: mapValueOfType<String>(json, r'gas'),
        gasPrice: mapValueOfType<String>(json, r'gas_price'),
        input: mapValueOfType<String>(json, r'input'),
        receiptCumulativeGasUsed: mapValueOfType<String>(json, r'receipt_cumulative_gas_used'),
        receiptGasUsed: mapValueOfType<String>(json, r'receipt_gas_used'),
        receiptContractAddress: mapValueOfType<String>(json, r'receipt_contract_address'),
        receiptRoot: mapValueOfType<String>(json, r'receipt_root'),
        receiptStatus: mapValueOfType<String>(json, r'receipt_status'),
        blockTimestamp: mapValueOfType<String>(json, r'block_timestamp'),
        blockNumber: mapValueOfType<String>(json, r'block_number'),
        blockHash: mapValueOfType<String>(json, r'block_hash'),
        logs: Log.listFromJson(json[r'logs']),
      );
    }
    return null;
  }

  static List<BlockTransaction> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BlockTransaction.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BlockTransaction>[];

  static Map<String, BlockTransaction> mapFromJson(dynamic json) {
    final map = <String, BlockTransaction>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BlockTransaction.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BlockTransaction-objects as value to a dart map
  static Map<String, List<BlockTransaction>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BlockTransaction>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BlockTransaction.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

