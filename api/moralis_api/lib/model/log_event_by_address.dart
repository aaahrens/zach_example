//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LogEventByAddress {
  /// Returns a new [LogEventByAddress] instance.
  LogEventByAddress({
    @required this.transactionHash,
    @required this.address,
    @required this.blockTimestamp,
    @required this.blockNumber,
    @required this.blockHash,
    @required this.data,
    @required this.topic0,
    @required this.topic1,
    @required this.topic2,
    @required this.topic3,
  });

  /// The transaction hash
  String transactionHash;

  /// The address of the contract
  String address;

  /// The block timestamp
  String blockTimestamp;

  /// The block number
  String blockNumber;

  /// The block hash
  String blockHash;

  /// The data of the log
  String data;

  String topic0;

  String topic1;

  String topic2;

  String topic3;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LogEventByAddress &&
     other.transactionHash == transactionHash &&
     other.address == address &&
     other.blockTimestamp == blockTimestamp &&
     other.blockNumber == blockNumber &&
     other.blockHash == blockHash &&
     other.data == data &&
     other.topic0 == topic0 &&
     other.topic1 == topic1 &&
     other.topic2 == topic2 &&
     other.topic3 == topic3;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transactionHash == null ? 0 : transactionHash.hashCode) +
    (address == null ? 0 : address.hashCode) +
    (blockTimestamp == null ? 0 : blockTimestamp.hashCode) +
    (blockNumber == null ? 0 : blockNumber.hashCode) +
    (blockHash == null ? 0 : blockHash.hashCode) +
    (data == null ? 0 : data.hashCode) +
    (topic0 == null ? 0 : topic0.hashCode) +
    (topic1 == null ? 0 : topic1.hashCode) +
    (topic2 == null ? 0 : topic2.hashCode) +
    (topic3 == null ? 0 : topic3.hashCode);

  @override
  String toString() => 'LogEventByAddress[transactionHash=$transactionHash, address=$address, blockTimestamp=$blockTimestamp, blockNumber=$blockNumber, blockHash=$blockHash, data=$data, topic0=$topic0, topic1=$topic1, topic2=$topic2, topic3=$topic3]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction_hash'] = transactionHash;
      json[r'address'] = address;
      json[r'block_timestamp'] = blockTimestamp;
      json[r'block_number'] = blockNumber;
      json[r'block_hash'] = blockHash;
      json[r'data'] = data;
      json[r'topic0'] = topic0;
      json[r'topic1'] = topic1;
      json[r'topic2'] = topic2;
      json[r'topic3'] = topic3;
    return json;
  }

  /// Returns a new [LogEventByAddress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LogEventByAddress fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return LogEventByAddress(
        transactionHash: mapValueOfType<String>(json, r'transaction_hash'),
        address: mapValueOfType<String>(json, r'address'),
        blockTimestamp: mapValueOfType<String>(json, r'block_timestamp'),
        blockNumber: mapValueOfType<String>(json, r'block_number'),
        blockHash: mapValueOfType<String>(json, r'block_hash'),
        data: mapValueOfType<String>(json, r'data'),
        topic0: mapValueOfType<String>(json, r'topic0'),
        topic1: mapValueOfType<String>(json, r'topic1'),
        topic2: mapValueOfType<String>(json, r'topic2'),
        topic3: mapValueOfType<String>(json, r'topic3'),
      );
    }
    return null;
  }

  static List<LogEventByAddress> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LogEventByAddress.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LogEventByAddress>[];

  static Map<String, LogEventByAddress> mapFromJson(dynamic json) {
    final map = <String, LogEventByAddress>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = LogEventByAddress.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LogEventByAddress-objects as value to a dart map
  static Map<String, List<LogEventByAddress>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<LogEventByAddress>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = LogEventByAddress.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

