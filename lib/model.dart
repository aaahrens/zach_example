import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model.g.dart';

// interface UriParameters {
// protocol: string;
// version: number;
// topic: string;
// publicKey: string;
// controller: boolean;
// relay: RelayProtocolOptions;
// }
//
// interface PairingSignal {
// type: "uri";
// params: {
// uri: string;
// };
// }

abstract class PairingSignal
    implements Built<PairingSignal, PairingSignalBuilder> {
  static Serializer<PairingSignal> get serializer => _$pairingSignalSerializer;

  factory PairingSignal([void Function(PairingSignalBuilder)? updates]) = _$PairingSignal;


  String get url;

  String get type;

  PairingSignal._();
}

abstract class AppMetadata implements Built<AppMetadata, AppMetadataBuilder> {
  static Serializer<AppMetadata> get serializer => _$appMetadataSerializer;

  factory AppMetadata([void Function(AppMetadataBuilder)? updates]) =
      _$AppMetadata;

  String get name;

  String get description;

  String get url;

  BuiltList<String> get icons;

  AppMetadata._();
}

abstract class PairingState
    implements Built<PairingState, PairingStateBuilder> {
  static Serializer<PairingState> get serializer => _$pairingStateSerializer;

  factory PairingState([void Function(PairingStateBuilder)? updates]) =
      _$PairingState;

  AppMetadata? get metadata;

  PairingState._();
}

abstract class PairingParticipant
    implements Built<PairingParticipant, PairingParticipantBuilder> {
  static Serializer<PairingParticipant> get serializer =>
      _$pairingParticipantSerializer;

  factory PairingParticipant(
          [void Function(PairingParticipantBuilder)? updates]) =
      _$PairingParticipant;

  String get publicKey;

  PairingParticipant._();
}

/// Sends a chat.
abstract class SessionApprovalRequest
    implements Built<SessionApprovalRequest, SessionApprovalRequestBuilder> {
  static Serializer<SessionApprovalRequest> get serializer =>
      _$sessionApprovalRequestSerializer;

  // Chat text.
  int get id;

  String get jsonrpc;

  String get method;

  factory SessionApprovalRequest(
          [Function(SessionApprovalRequestBuilder) updates]) =
      _$SessionApprovalRequest;

  SessionApprovalRequest._();
}

/// Sends a chat.
abstract class SessionApprovalResponse
    implements Built<SessionApprovalResponse, SessionApprovalResponseBuilder> {
  static Serializer<SessionApprovalResponse> get serializer =>
      _$sessionApprovalResponseSerializer;

  // Chat text.
  String get text;

  factory SessionApprovalResponse(
          [Function(SessionApprovalResponseBuilder) updates]) =
      _$SessionApprovalResponse;

  SessionApprovalResponse._();
}
