// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PairingSignal> _$pairingSignalSerializer =
    new _$PairingSignalSerializer();
Serializer<AppMetadata> _$appMetadataSerializer = new _$AppMetadataSerializer();
Serializer<PairingState> _$pairingStateSerializer =
    new _$PairingStateSerializer();
Serializer<PairingParticipant> _$pairingParticipantSerializer =
    new _$PairingParticipantSerializer();
Serializer<SessionApprovalRequest> _$sessionApprovalRequestSerializer =
    new _$SessionApprovalRequestSerializer();
Serializer<SessionApprovalResponse> _$sessionApprovalResponseSerializer =
    new _$SessionApprovalResponseSerializer();

class _$PairingSignalSerializer implements StructuredSerializer<PairingSignal> {
  @override
  final Iterable<Type> types = const [PairingSignal, _$PairingSignal];
  @override
  final String wireName = 'PairingSignal';

  @override
  Iterable<Object?> serialize(Serializers serializers, PairingSignal object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PairingSignal deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PairingSignalBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppMetadataSerializer implements StructuredSerializer<AppMetadata> {
  @override
  final Iterable<Type> types = const [AppMetadata, _$AppMetadata];
  @override
  final String wireName = 'AppMetadata';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppMetadata object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'icons',
      serializers.serialize(object.icons,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  AppMetadata deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppMetadataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icons':
          result.icons.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$PairingStateSerializer implements StructuredSerializer<PairingState> {
  @override
  final Iterable<Type> types = const [PairingState, _$PairingState];
  @override
  final String wireName = 'PairingState';

  @override
  Iterable<Object?> serialize(Serializers serializers, PairingState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.metadata;
    if (value != null) {
      result
        ..add('metadata')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AppMetadata)));
    }
    return result;
  }

  @override
  PairingState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PairingStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'metadata':
          result.metadata.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppMetadata))! as AppMetadata);
          break;
      }
    }

    return result.build();
  }
}

class _$PairingParticipantSerializer
    implements StructuredSerializer<PairingParticipant> {
  @override
  final Iterable<Type> types = const [PairingParticipant, _$PairingParticipant];
  @override
  final String wireName = 'PairingParticipant';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PairingParticipant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'publicKey',
      serializers.serialize(object.publicKey,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PairingParticipant deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PairingParticipantBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'publicKey':
          result.publicKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SessionApprovalRequestSerializer
    implements StructuredSerializer<SessionApprovalRequest> {
  @override
  final Iterable<Type> types = const [
    SessionApprovalRequest,
    _$SessionApprovalRequest
  ];
  @override
  final String wireName = 'SessionApprovalRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SessionApprovalRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'jsonrpc',
      serializers.serialize(object.jsonrpc,
          specifiedType: const FullType(String)),
      'method',
      serializers.serialize(object.method,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SessionApprovalRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SessionApprovalRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'jsonrpc':
          result.jsonrpc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'method':
          result.method = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SessionApprovalResponseSerializer
    implements StructuredSerializer<SessionApprovalResponse> {
  @override
  final Iterable<Type> types = const [
    SessionApprovalResponse,
    _$SessionApprovalResponse
  ];
  @override
  final String wireName = 'SessionApprovalResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SessionApprovalResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SessionApprovalResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SessionApprovalResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PairingSignal extends PairingSignal {
  @override
  final String url;
  @override
  final String type;

  factory _$PairingSignal([void Function(PairingSignalBuilder)? updates]) =>
      (new PairingSignalBuilder()..update(updates)).build();

  _$PairingSignal._({required this.url, required this.type}) : super._() {
    BuiltValueNullFieldError.checkNotNull(url, 'PairingSignal', 'url');
    BuiltValueNullFieldError.checkNotNull(type, 'PairingSignal', 'type');
  }

  @override
  PairingSignal rebuild(void Function(PairingSignalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PairingSignalBuilder toBuilder() => new PairingSignalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PairingSignal && url == other.url && type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PairingSignal')
          ..add('url', url)
          ..add('type', type))
        .toString();
  }
}

class PairingSignalBuilder
    implements Builder<PairingSignal, PairingSignalBuilder> {
  _$PairingSignal? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  PairingSignalBuilder();

  PairingSignalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PairingSignal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PairingSignal;
  }

  @override
  void update(void Function(PairingSignalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PairingSignal build() {
    final _$result = _$v ??
        new _$PairingSignal._(
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'PairingSignal', 'url'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'PairingSignal', 'type'));
    replace(_$result);
    return _$result;
  }
}

class _$AppMetadata extends AppMetadata {
  @override
  final String name;
  @override
  final String description;
  @override
  final String url;
  @override
  final BuiltList<String> icons;

  factory _$AppMetadata([void Function(AppMetadataBuilder)? updates]) =>
      (new AppMetadataBuilder()..update(updates)).build();

  _$AppMetadata._(
      {required this.name,
      required this.description,
      required this.url,
      required this.icons})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'AppMetadata', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, 'AppMetadata', 'description');
    BuiltValueNullFieldError.checkNotNull(url, 'AppMetadata', 'url');
    BuiltValueNullFieldError.checkNotNull(icons, 'AppMetadata', 'icons');
  }

  @override
  AppMetadata rebuild(void Function(AppMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppMetadataBuilder toBuilder() => new AppMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppMetadata &&
        name == other.name &&
        description == other.description &&
        url == other.url &&
        icons == other.icons;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), description.hashCode), url.hashCode),
        icons.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppMetadata')
          ..add('name', name)
          ..add('description', description)
          ..add('url', url)
          ..add('icons', icons))
        .toString();
  }
}

class AppMetadataBuilder implements Builder<AppMetadata, AppMetadataBuilder> {
  _$AppMetadata? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  ListBuilder<String>? _icons;
  ListBuilder<String> get icons => _$this._icons ??= new ListBuilder<String>();
  set icons(ListBuilder<String>? icons) => _$this._icons = icons;

  AppMetadataBuilder();

  AppMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _url = $v.url;
      _icons = $v.icons.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppMetadata;
  }

  @override
  void update(void Function(AppMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppMetadata build() {
    _$AppMetadata _$result;
    try {
      _$result = _$v ??
          new _$AppMetadata._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'AppMetadata', 'name'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'AppMetadata', 'description'),
              url: BuiltValueNullFieldError.checkNotNull(
                  url, 'AppMetadata', 'url'),
              icons: icons.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'icons';
        icons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppMetadata', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PairingState extends PairingState {
  @override
  final AppMetadata? metadata;

  factory _$PairingState([void Function(PairingStateBuilder)? updates]) =>
      (new PairingStateBuilder()..update(updates)).build();

  _$PairingState._({this.metadata}) : super._();

  @override
  PairingState rebuild(void Function(PairingStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PairingStateBuilder toBuilder() => new PairingStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PairingState && metadata == other.metadata;
  }

  @override
  int get hashCode {
    return $jf($jc(0, metadata.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PairingState')
          ..add('metadata', metadata))
        .toString();
  }
}

class PairingStateBuilder
    implements Builder<PairingState, PairingStateBuilder> {
  _$PairingState? _$v;

  AppMetadataBuilder? _metadata;
  AppMetadataBuilder get metadata =>
      _$this._metadata ??= new AppMetadataBuilder();
  set metadata(AppMetadataBuilder? metadata) => _$this._metadata = metadata;

  PairingStateBuilder();

  PairingStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PairingState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PairingState;
  }

  @override
  void update(void Function(PairingStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PairingState build() {
    _$PairingState _$result;
    try {
      _$result = _$v ?? new _$PairingState._(metadata: _metadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PairingState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PairingParticipant extends PairingParticipant {
  @override
  final String publicKey;

  factory _$PairingParticipant(
          [void Function(PairingParticipantBuilder)? updates]) =>
      (new PairingParticipantBuilder()..update(updates)).build();

  _$PairingParticipant._({required this.publicKey}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        publicKey, 'PairingParticipant', 'publicKey');
  }

  @override
  PairingParticipant rebuild(
          void Function(PairingParticipantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PairingParticipantBuilder toBuilder() =>
      new PairingParticipantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PairingParticipant && publicKey == other.publicKey;
  }

  @override
  int get hashCode {
    return $jf($jc(0, publicKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PairingParticipant')
          ..add('publicKey', publicKey))
        .toString();
  }
}

class PairingParticipantBuilder
    implements Builder<PairingParticipant, PairingParticipantBuilder> {
  _$PairingParticipant? _$v;

  String? _publicKey;
  String? get publicKey => _$this._publicKey;
  set publicKey(String? publicKey) => _$this._publicKey = publicKey;

  PairingParticipantBuilder();

  PairingParticipantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicKey = $v.publicKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PairingParticipant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PairingParticipant;
  }

  @override
  void update(void Function(PairingParticipantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PairingParticipant build() {
    final _$result = _$v ??
        new _$PairingParticipant._(
            publicKey: BuiltValueNullFieldError.checkNotNull(
                publicKey, 'PairingParticipant', 'publicKey'));
    replace(_$result);
    return _$result;
  }
}

class _$SessionApprovalRequest extends SessionApprovalRequest {
  @override
  final int id;
  @override
  final String jsonrpc;
  @override
  final String method;

  factory _$SessionApprovalRequest(
          [void Function(SessionApprovalRequestBuilder)? updates]) =>
      (new SessionApprovalRequestBuilder()..update(updates)).build();

  _$SessionApprovalRequest._(
      {required this.id, required this.jsonrpc, required this.method})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'SessionApprovalRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(
        jsonrpc, 'SessionApprovalRequest', 'jsonrpc');
    BuiltValueNullFieldError.checkNotNull(
        method, 'SessionApprovalRequest', 'method');
  }

  @override
  SessionApprovalRequest rebuild(
          void Function(SessionApprovalRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionApprovalRequestBuilder toBuilder() =>
      new SessionApprovalRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionApprovalRequest &&
        id == other.id &&
        jsonrpc == other.jsonrpc &&
        method == other.method;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), jsonrpc.hashCode), method.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SessionApprovalRequest')
          ..add('id', id)
          ..add('jsonrpc', jsonrpc)
          ..add('method', method))
        .toString();
  }
}

class SessionApprovalRequestBuilder
    implements Builder<SessionApprovalRequest, SessionApprovalRequestBuilder> {
  _$SessionApprovalRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _jsonrpc;
  String? get jsonrpc => _$this._jsonrpc;
  set jsonrpc(String? jsonrpc) => _$this._jsonrpc = jsonrpc;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  SessionApprovalRequestBuilder();

  SessionApprovalRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _jsonrpc = $v.jsonrpc;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionApprovalRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SessionApprovalRequest;
  }

  @override
  void update(void Function(SessionApprovalRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SessionApprovalRequest build() {
    final _$result = _$v ??
        new _$SessionApprovalRequest._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'SessionApprovalRequest', 'id'),
            jsonrpc: BuiltValueNullFieldError.checkNotNull(
                jsonrpc, 'SessionApprovalRequest', 'jsonrpc'),
            method: BuiltValueNullFieldError.checkNotNull(
                method, 'SessionApprovalRequest', 'method'));
    replace(_$result);
    return _$result;
  }
}

class _$SessionApprovalResponse extends SessionApprovalResponse {
  @override
  final String text;

  factory _$SessionApprovalResponse(
          [void Function(SessionApprovalResponseBuilder)? updates]) =>
      (new SessionApprovalResponseBuilder()..update(updates)).build();

  _$SessionApprovalResponse._({required this.text}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        text, 'SessionApprovalResponse', 'text');
  }

  @override
  SessionApprovalResponse rebuild(
          void Function(SessionApprovalResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionApprovalResponseBuilder toBuilder() =>
      new SessionApprovalResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionApprovalResponse && text == other.text;
  }

  @override
  int get hashCode {
    return $jf($jc(0, text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SessionApprovalResponse')
          ..add('text', text))
        .toString();
  }
}

class SessionApprovalResponseBuilder
    implements
        Builder<SessionApprovalResponse, SessionApprovalResponseBuilder> {
  _$SessionApprovalResponse? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  SessionApprovalResponseBuilder();

  SessionApprovalResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionApprovalResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SessionApprovalResponse;
  }

  @override
  void update(void Function(SessionApprovalResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SessionApprovalResponse build() {
    final _$result = _$v ??
        new _$SessionApprovalResponse._(
            text: BuiltValueNullFieldError.checkNotNull(
                text, 'SessionApprovalResponse', 'text'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
