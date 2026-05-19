// This is a generated file - do not edit.
//
// Generated from contract_types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use contractNonceInfoDescriptor instead')
const ContractNonceInfo$json = {
  '1': 'ContractNonceInfo',
  '2': [
    {
      '1': 'contract_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '10': 'contractId'
    },
    {'1': 'nonce', '3': 2, '4': 1, '5': 3, '10': 'nonce'},
  ],
};

/// Descriptor for `ContractNonceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractNonceInfoDescriptor = $convert.base64Decode(
    'ChFDb250cmFjdE5vbmNlSW5mbxIyCgtjb250cmFjdF9pZBgBIAEoCzIRLnByb3RvLkNvbnRyYW'
    'N0SURSCmNvbnRyYWN0SWQSFAoFbm9uY2UYAiABKANSBW5vbmNl');

@$core.Deprecated('Use contractLoginfoDescriptor instead')
const ContractLoginfo$json = {
  '1': 'ContractLoginfo',
  '2': [
    {
      '1': 'contractID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '10': 'contractID'
    },
    {'1': 'bloom', '3': 2, '4': 1, '5': 12, '10': 'bloom'},
    {'1': 'topic', '3': 3, '4': 3, '5': 12, '10': 'topic'},
    {'1': 'data', '3': 4, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `ContractLoginfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractLoginfoDescriptor = $convert.base64Decode(
    'Cg9Db250cmFjdExvZ2luZm8SMQoKY29udHJhY3RJRBgBIAEoCzIRLnByb3RvLkNvbnRyYWN0SU'
    'RSCmNvbnRyYWN0SUQSFAoFYmxvb20YAiABKAxSBWJsb29tEhQKBXRvcGljGAMgAygMUgV0b3Bp'
    'YxISCgRkYXRhGAQgASgMUgRkYXRh');

@$core.Deprecated('Use contractFunctionResultDescriptor instead')
const ContractFunctionResult$json = {
  '1': 'ContractFunctionResult',
  '2': [
    {
      '1': 'contractID',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.ContractID',
      '10': 'contractID'
    },
    {
      '1': 'contractCallResult',
      '3': 2,
      '4': 1,
      '5': 12,
      '10': 'contractCallResult'
    },
    {'1': 'errorMessage', '3': 3, '4': 1, '5': 9, '10': 'errorMessage'},
    {'1': 'bloom', '3': 4, '4': 1, '5': 12, '10': 'bloom'},
    {'1': 'gasUsed', '3': 5, '4': 1, '5': 4, '10': 'gasUsed'},
    {
      '1': 'logInfo',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.proto.ContractLoginfo',
      '10': 'logInfo'
    },
    {
      '1': 'createdContractIDs',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.proto.ContractID',
      '8': {'3': true},
      '10': 'createdContractIDs',
    },
    {
      '1': 'evm_address',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BytesValue',
      '10': 'evmAddress'
    },
    {'1': 'gas', '3': 10, '4': 1, '5': 3, '10': 'gas'},
    {'1': 'amount', '3': 11, '4': 1, '5': 3, '10': 'amount'},
    {
      '1': 'functionParameters',
      '3': 12,
      '4': 1,
      '5': 12,
      '10': 'functionParameters'
    },
    {
      '1': 'sender_id',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.proto.AccountID',
      '10': 'senderId'
    },
    {
      '1': 'contract_nonces',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.proto.ContractNonceInfo',
      '10': 'contractNonces'
    },
    {
      '1': 'signer_nonce',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int64Value',
      '10': 'signerNonce'
    },
  ],
  '9': [
    {'1': 8, '2': 9},
  ],
};

/// Descriptor for `ContractFunctionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractFunctionResultDescriptor = $convert.base64Decode(
    'ChZDb250cmFjdEZ1bmN0aW9uUmVzdWx0EjEKCmNvbnRyYWN0SUQYASABKAsyES5wcm90by5Db2'
    '50cmFjdElEUgpjb250cmFjdElEEi4KEmNvbnRyYWN0Q2FsbFJlc3VsdBgCIAEoDFISY29udHJh'
    'Y3RDYWxsUmVzdWx0EiIKDGVycm9yTWVzc2FnZRgDIAEoCVIMZXJyb3JNZXNzYWdlEhQKBWJsb2'
    '9tGAQgASgMUgVibG9vbRIYCgdnYXNVc2VkGAUgASgEUgdnYXNVc2VkEjAKB2xvZ0luZm8YBiAD'
    'KAsyFi5wcm90by5Db250cmFjdExvZ2luZm9SB2xvZ0luZm8SRQoSY3JlYXRlZENvbnRyYWN0SU'
    'RzGAcgAygLMhEucHJvdG8uQ29udHJhY3RJREICGAFSEmNyZWF0ZWRDb250cmFjdElEcxI8Cgtl'
    'dm1fYWRkcmVzcxgJIAEoCzIbLmdvb2dsZS5wcm90b2J1Zi5CeXRlc1ZhbHVlUgpldm1BZGRyZX'
    'NzEhAKA2dhcxgKIAEoA1IDZ2FzEhYKBmFtb3VudBgLIAEoA1IGYW1vdW50Ei4KEmZ1bmN0aW9u'
    'UGFyYW1ldGVycxgMIAEoDFISZnVuY3Rpb25QYXJhbWV0ZXJzEi0KCXNlbmRlcl9pZBgNIAEoCz'
    'IQLnByb3RvLkFjY291bnRJRFIIc2VuZGVySWQSQQoPY29udHJhY3Rfbm9uY2VzGA4gAygLMhgu'
    'cHJvdG8uQ29udHJhY3ROb25jZUluZm9SDmNvbnRyYWN0Tm9uY2VzEj4KDHNpZ25lcl9ub25jZR'
    'gPIAEoCzIbLmdvb2dsZS5wcm90b2J1Zi5JbnQ2NFZhbHVlUgtzaWduZXJOb25jZUoECAgQCQ==');
