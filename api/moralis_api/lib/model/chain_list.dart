//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ChainList {
  /// Instantiate a new enum with the provided [value].
  const ChainList._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const eth = ChainList._(r'eth');
  static const n0x1 = ChainList._(r'0x1');
  static const ropsten = ChainList._(r'ropsten');
  static const n0x3 = ChainList._(r'0x3');
  static const rinkeby = ChainList._(r'rinkeby');
  static const n0x4 = ChainList._(r'0x4');
  static const goerli = ChainList._(r'goerli');
  static const n0x5 = ChainList._(r'0x5');
  static const kovan = ChainList._(r'kovan');
  static const n0x2a = ChainList._(r'0x2a');
  static const polygon = ChainList._(r'polygon');
  static const n0x89 = ChainList._(r'0x89');
  static const mumbai = ChainList._(r'mumbai');
  static const n0x13881 = ChainList._(r'0x13881');
  static const bsc = ChainList._(r'bsc');
  static const n0x38 = ChainList._(r'0x38');
  static const bscTestnet = ChainList._(r'bsc testnet');
  static const n0x61 = ChainList._(r'0x61');
  static const avalanche = ChainList._(r'avalanche');
  static const n0xa86a = ChainList._(r'0xa86a');
  static const avalancheTestnet = ChainList._(r'avalanche testnet');
  static const n0xa869 = ChainList._(r'0xa869');
  static const fantom = ChainList._(r'fantom');
  static const n0xfa = ChainList._(r'0xfa');

  /// List of all possible values in this [enum][ChainList].
  static const values = <ChainList>[
    eth,
    n0x1,
    ropsten,
    n0x3,
    rinkeby,
    n0x4,
    goerli,
    n0x5,
    kovan,
    n0x2a,
    polygon,
    n0x89,
    mumbai,
    n0x13881,
    bsc,
    n0x38,
    bscTestnet,
    n0x61,
    avalanche,
    n0xa86a,
    avalancheTestnet,
    n0xa869,
    fantom,
    n0xfa,
  ];

  static ChainList fromJson(dynamic value) =>
    ChainListTypeTransformer().decode(value);

  static List<ChainList> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ChainList.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ChainList>[];
}

/// Transformation class that can [encode] an instance of [ChainList] to String,
/// and [decode] dynamic data back to [ChainList].
class ChainListTypeTransformer {
  factory ChainListTypeTransformer() => _instance ??= const ChainListTypeTransformer._();

  const ChainListTypeTransformer._();

  String encode(ChainList data) => data.value;

  /// Decodes a [dynamic value][data] to a ChainList.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChainList decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'eth': return ChainList.eth;
        case r'0x1': return ChainList.n0x1;
        case r'ropsten': return ChainList.ropsten;
        case r'0x3': return ChainList.n0x3;
        case r'rinkeby': return ChainList.rinkeby;
        case r'0x4': return ChainList.n0x4;
        case r'goerli': return ChainList.goerli;
        case r'0x5': return ChainList.n0x5;
        case r'kovan': return ChainList.kovan;
        case r'0x2a': return ChainList.n0x2a;
        case r'polygon': return ChainList.polygon;
        case r'0x89': return ChainList.n0x89;
        case r'mumbai': return ChainList.mumbai;
        case r'0x13881': return ChainList.n0x13881;
        case r'bsc': return ChainList.bsc;
        case r'0x38': return ChainList.n0x38;
        case r'bsc testnet': return ChainList.bscTestnet;
        case r'0x61': return ChainList.n0x61;
        case r'avalanche': return ChainList.avalanche;
        case r'0xa86a': return ChainList.n0xa86a;
        case r'avalanche testnet': return ChainList.avalancheTestnet;
        case r'0xa869': return ChainList.n0xa869;
        case r'fantom': return ChainList.fantom;
        case r'0xfa': return ChainList.n0xfa;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChainListTypeTransformer] instance.
  static ChainListTypeTransformer _instance;
}

