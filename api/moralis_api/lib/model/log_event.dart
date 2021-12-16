//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LogEvent {
  /// Returns a new [LogEvent] instance.
  LogEvent({
    @required this.transactionHash,
    @required this.address,
    @required this.blockTimestamp,
    @required this.blockNumber,
    @required this.blockHash,
    @required this.data,
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

  /// The content of the event
  Object data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LogEvent &&
     other.transactionHash == transactionHash &&
     other.address == address &&
     other.blockTimestamp == blockTimestamp &&
     other.blockNumber == blockNumber &&
     other.blockHash == blockHash &&
     other.data == data;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transactionHash == null ? 0 : transactionHash.hashCode) +
    (address == null ? 0 : address.hashCode) +
    (blockTimestamp == null ? 0 : blockTimestamp.hashCode) +
    (blockNumber == null ? 0 : blockNumber.hashCode) +
    (blockHash == null ? 0 : blockHash.hashCode) +
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'LogEvent[transactionHash=$transactionHash, address=$address, blockTimestamp=$blockTimestamp, blockNumber=$blockNumber, blockHash=$blockHash, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction_hash'] = transactionHash;
      json[r'address'] = address;
      json[r'block_timestamp'] = blockTimestamp;
      json[r'block_number'] = blockNumber;
      json[r'block_hash'] = blockHash;
      json[r'data'] = data;
    return json;
  }

  /// Returns a new [LogEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LogEvent fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return LogEvent(
        transactionHash: mapValueOfType<String>(json, r'transaction_hash'),
        address: mapValueOfType<String>(json, r'address'),
        blockTimestamp: mapValueOfType<String>(json, r'block_timestamp'),
        blockNumber: mapValueOfType<String>(json, r'block_number'),
        blockHash: mapValueOfType<String>(json, r'block_hash'),
        data: mapValueOfType<Object>(json, r'data'),
      );
    }
    return null;
  }

  static List<LogEvent> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LogEvent.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LogEvent>[];

  static Map<String, LogEvent> mapFromJson(dynamic json) {
    final map = <String, LogEvent>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = LogEvent.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LogEvent-objects as value to a dart map
  static Map<String, List<LogEvent>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<LogEvent>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = LogEvent.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

