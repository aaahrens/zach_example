//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Log {
  /// Returns a new [Log] instance.
  Log({
    @required this.logIndex,
    @required this.transactionHash,
    @required this.transactionIndex,
    @required this.address,
    @required this.data,
    @required this.topic0,
    this.topic1,
    this.topic2,
    this.topic3,
    @required this.blockTimestamp,
    @required this.blockNumber,
    @required this.blockHash,
  });

  String logIndex;

  /// The hash of the transaction
  String transactionHash;

  String transactionIndex;

  /// The address of the contract
  String address;

  /// The data of the log
  String data;

  String topic0;

  String topic1;

  String topic2;

  String topic3;

  /// The timestamp of the block
  String blockTimestamp;

  /// The block number
  String blockNumber;

  /// The hash of the block
  String blockHash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Log &&
     other.logIndex == logIndex &&
     other.transactionHash == transactionHash &&
     other.transactionIndex == transactionIndex &&
     other.address == address &&
     other.data == data &&
     other.topic0 == topic0 &&
     other.topic1 == topic1 &&
     other.topic2 == topic2 &&
     other.topic3 == topic3 &&
     other.blockTimestamp == blockTimestamp &&
     other.blockNumber == blockNumber &&
     other.blockHash == blockHash;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (logIndex == null ? 0 : logIndex.hashCode) +
    (transactionHash == null ? 0 : transactionHash.hashCode) +
    (transactionIndex == null ? 0 : transactionIndex.hashCode) +
    (address == null ? 0 : address.hashCode) +
    (data == null ? 0 : data.hashCode) +
    (topic0 == null ? 0 : topic0.hashCode) +
    (topic1 == null ? 0 : topic1.hashCode) +
    (topic2 == null ? 0 : topic2.hashCode) +
    (topic3 == null ? 0 : topic3.hashCode) +
    (blockTimestamp == null ? 0 : blockTimestamp.hashCode) +
    (blockNumber == null ? 0 : blockNumber.hashCode) +
    (blockHash == null ? 0 : blockHash.hashCode);

  @override
  String toString() => 'Log[logIndex=$logIndex, transactionHash=$transactionHash, transactionIndex=$transactionIndex, address=$address, data=$data, topic0=$topic0, topic1=$topic1, topic2=$topic2, topic3=$topic3, blockTimestamp=$blockTimestamp, blockNumber=$blockNumber, blockHash=$blockHash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'log_index'] = logIndex;
      json[r'transaction_hash'] = transactionHash;
      json[r'transaction_index'] = transactionIndex;
      json[r'address'] = address;
      json[r'data'] = data;
      json[r'topic0'] = topic0;
    if (topic1 != null) {
      json[r'topic1'] = topic1;
    }
    if (topic2 != null) {
      json[r'topic2'] = topic2;
    }
    if (topic3 != null) {
      json[r'topic3'] = topic3;
    }
      json[r'block_timestamp'] = blockTimestamp;
      json[r'block_number'] = blockNumber;
      json[r'block_hash'] = blockHash;
    return json;
  }

  /// Returns a new [Log] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Log fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Log(
        logIndex: mapValueOfType<String>(json, r'log_index'),
        transactionHash: mapValueOfType<String>(json, r'transaction_hash'),
        transactionIndex: mapValueOfType<String>(json, r'transaction_index'),
        address: mapValueOfType<String>(json, r'address'),
        data: mapValueOfType<String>(json, r'data'),
        topic0: mapValueOfType<String>(json, r'topic0'),
        topic1: mapValueOfType<String>(json, r'topic1'),
        topic2: mapValueOfType<String>(json, r'topic2'),
        topic3: mapValueOfType<String>(json, r'topic3'),
        blockTimestamp: mapValueOfType<String>(json, r'block_timestamp'),
        blockNumber: mapValueOfType<String>(json, r'block_number'),
        blockHash: mapValueOfType<String>(json, r'block_hash'),
      );
    }
    return null;
  }

  static List<Log> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Log.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Log>[];

  static Map<String, Log> mapFromJson(dynamic json) {
    final map = <String, Log>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Log.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Log-objects as value to a dart map
  static Map<String, List<Log>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Log>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Log.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

