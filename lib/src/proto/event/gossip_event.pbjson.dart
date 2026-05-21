// This is a generated file - do not edit.
//
// Generated from event/gossip_event.proto.

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

@$core.Deprecated('Use gossipEventDescriptor instead')
const GossipEvent$json = {
  '1': 'GossipEvent',
  '2': [
    {
      '1': 'event_core',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.com.hedera.hapi.platform.event.EventCore',
      '10': 'eventCore'
    },
    {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
    {'1': 'transactions', '3': 4, '4': 3, '5': 12, '10': 'transactions'},
    {
      '1': 'parents',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.com.hedera.hapi.platform.event.EventDescriptor',
      '10': 'parents'
    },
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `GossipEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gossipEventDescriptor = $convert.base64Decode(
    'CgtHb3NzaXBFdmVudBJICgpldmVudF9jb3JlGAEgASgLMikuY29tLmhlZGVyYS5oYXBpLnBsYX'
    'Rmb3JtLmV2ZW50LkV2ZW50Q29yZVIJZXZlbnRDb3JlEhwKCXNpZ25hdHVyZRgCIAEoDFIJc2ln'
    'bmF0dXJlEiIKDHRyYW5zYWN0aW9ucxgEIAMoDFIMdHJhbnNhY3Rpb25zEkkKB3BhcmVudHMYBS'
    'ADKAsyLy5jb20uaGVkZXJhLmhhcGkucGxhdGZvcm0uZXZlbnQuRXZlbnREZXNjcmlwdG9yUgdw'
    'YXJlbnRzSgQIAxAE');
