// This is a generated file - do not edit.
//
// Generated from crypto_add_live_hash.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_types.pb.dart' as $0;
import 'duration.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// *
///  A Live Hash value associating some item of content to an account.
///
///  This message represents a desired entry in the ledger for a SHA-384
///  hash of some content, an associated specific account, a list of authorized
///  keys, and a duration the live hash is "valid".
class LiveHash extends $pb.GeneratedMessage {
  factory LiveHash({
    $0.AccountID? accountId,
    $core.List<$core.int>? hash,
    $0.KeyList? keys,
    $1.Duration? duration,
  }) {
    final result = create();
    if (accountId != null) result.accountId = accountId;
    if (hash != null) result.hash = hash;
    if (keys != null) result.keys = keys;
    if (duration != null) result.duration = duration;
    return result;
  }

  LiveHash._();

  factory LiveHash.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LiveHash.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LiveHash',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<$0.AccountID>(1, _omitFieldNames ? '' : 'accountId',
        protoName: 'accountId', subBuilder: $0.AccountID.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.OY)
    ..aOM<$0.KeyList>(3, _omitFieldNames ? '' : 'keys',
        subBuilder: $0.KeyList.create)
    ..aOM<$1.Duration>(5, _omitFieldNames ? '' : 'duration',
        subBuilder: $1.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LiveHash clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LiveHash copyWith(void Function(LiveHash) updates) =>
      super.copyWith((message) => updates(message as LiveHash)) as LiveHash;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveHash create() => LiveHash._();
  @$core.override
  LiveHash createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LiveHash getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveHash>(create);
  static LiveHash? _defaultInstance;

  /// *
  ///  An account associated via this live hash to the hashed content.
  @$pb.TagNumber(1)
  $0.AccountID get accountId => $_getN(0);
  @$pb.TagNumber(1)
  set accountId($0.AccountID value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.AccountID ensureAccountId() => $_ensure(0);

  /// *
  ///  A SHA-384 hash of some content that is associated to the account
  ///  or account holder.
  @$pb.TagNumber(2)
  $core.List<$core.int> get hash => $_getN(1);
  @$pb.TagNumber(2)
  set hash($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => $_clearField(2);

  /// *
  ///  A list of keys, all of which MUST sign the transaction to add the
  ///  live hash.<br/>
  ///  Any one of these keys may, however, remove the live hash to revoke
  ///  the association.
  @$pb.TagNumber(3)
  $0.KeyList get keys => $_getN(2);
  @$pb.TagNumber(3)
  set keys($0.KeyList value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasKeys() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeys() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.KeyList ensureKeys() => $_ensure(2);

  /// *
  ///  A duration describing how long this Live Hash SHALL remain valid.<br/>
  ///  A Live Hash SHOULD NOT be relied upon after this duration has elapsed.
  @$pb.TagNumber(5)
  $1.Duration get duration => $_getN(3);
  @$pb.TagNumber(5)
  set duration($1.Duration value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasDuration() => $_has(3);
  @$pb.TagNumber(5)
  void clearDuration() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Duration ensureDuration() => $_ensure(3);
}

/// *
///  Add a hash value to the ledger and associate it with an account.
///
///  Create an entry in the ledger for a SHA-384 hash of some content, and
///  associate that with a specific account.  This is sometimes used to associate
///  a credential or certificate with an account as a public record.<br/>
///  The entry created is also associated with a list of keys, all of which
///  MUST sign this transaction.<br/>
///  The account key for the associated account MUST sign this transaction.<br/>
///
///  The live hash, once created, MAY be removed from the ledger with one
///  or more signatures.
///  - The account key of the account associated to the live hash.
///  - Any one key from the key list in the live hash entry.
///  - Any combination of keys from the key list in the live hash entry.
class CryptoAddLiveHashTransactionBody extends $pb.GeneratedMessage {
  factory CryptoAddLiveHashTransactionBody({
    LiveHash? liveHash,
  }) {
    final result = create();
    if (liveHash != null) result.liveHash = liveHash;
    return result;
  }

  CryptoAddLiveHashTransactionBody._();

  factory CryptoAddLiveHashTransactionBody.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CryptoAddLiveHashTransactionBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CryptoAddLiveHashTransactionBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'),
      createEmptyInstance: create)
    ..aOM<LiveHash>(3, _omitFieldNames ? '' : 'liveHash',
        protoName: 'liveHash', subBuilder: LiveHash.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoAddLiveHashTransactionBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CryptoAddLiveHashTransactionBody copyWith(
          void Function(CryptoAddLiveHashTransactionBody) updates) =>
      super.copyWith(
              (message) => updates(message as CryptoAddLiveHashTransactionBody))
          as CryptoAddLiveHashTransactionBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CryptoAddLiveHashTransactionBody create() =>
      CryptoAddLiveHashTransactionBody._();
  @$core.override
  CryptoAddLiveHashTransactionBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CryptoAddLiveHashTransactionBody getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CryptoAddLiveHashTransactionBody>(
          create);
  static CryptoAddLiveHashTransactionBody? _defaultInstance;

  /// *
  ///  A Live Hash to be added to the ledger and associated with
  ///  the identified account.
  @$pb.TagNumber(3)
  LiveHash get liveHash => $_getN(0);
  @$pb.TagNumber(3)
  set liveHash(LiveHash value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLiveHash() => $_has(0);
  @$pb.TagNumber(3)
  void clearLiveHash() => $_clearField(3);
  @$pb.TagNumber(3)
  LiveHash ensureLiveHash() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
