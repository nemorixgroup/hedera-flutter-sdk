#!/usr/bin/env bash
# scripts/generate_proto.sh
# Generates Dart classes from Hedera HAPI Protobuf definitions.
# macOS / Linux equivalent of scripts/generate_proto.ps1.
#
# Usage (from any directory):
#   ./scripts/generate_proto.sh
#
# Location of your hedera-protobufs clone
# (default: ~/Documents/GitHub/hedera-protobufs):
#   HEDERA_PROTOBUFS_DIR=/path/to/hedera-protobufs ./scripts/generate_proto.sh
#
# Requirements:
#   brew install protobuf
#   dart pub global activate protoc_plugin
#   export PATH="$PATH:$HOME/.pub-cache/bin"   # add to ~/.zshrc

set -euo pipefail

CYAN='\033[36m'
GREEN='\033[32m'
RED='\033[31m'
RESET='\033[0m'

say() {
  printf '%b%s%b\n' "$1" "$2" "$RESET"
}

# Always run from the repository root so relative paths behave the same
# no matter where the script is invoked from.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.."

PROTO_ROOT="${HEDERA_PROTOBUFS_DIR:-$HOME/Documents/GitHub/hedera-protobufs}"
PROTO_OUT="lib/src/proto"

say "$CYAN" "Generating Dart classes from Hedera HAPI protos..."

# ---- Preflight checks ----

if ! command -v protoc >/dev/null 2>&1; then
  say "$RED" "protoc not found. Install it with: brew install protobuf"
  exit 1
fi

if ! command -v protoc-gen-dart >/dev/null 2>&1; then
  say "$RED" "protoc-gen-dart not found. Run: dart pub global activate protoc_plugin"
  say "$RED" "Then add to your PATH: export PATH=\"\$PATH:\$HOME/.pub-cache/bin\""
  exit 1
fi

if [ ! -d "$PROTO_ROOT/services" ]; then
  say "$RED" "hedera-protobufs not found at: $PROTO_ROOT"
  say "$RED" "Set HEDERA_PROTOBUFS_DIR to the path of your clone."
  exit 1
fi

# Create output directory if it doesn't exist
mkdir -p "$PROTO_OUT"

# ---- Collect .proto files ----

# Generate Dart classes from all .proto files in services/ and the
# subdirectories below. nullglob makes a pattern with no matches expand
# to nothing instead of the literal pattern text.
shopt -s nullglob
proto_files=(
  "$PROTO_ROOT/services/"*.proto
  "$PROTO_ROOT/services/auxiliary/hints/"*.proto
  "$PROTO_ROOT/services/auxiliary/history/"*.proto
  "$PROTO_ROOT/services/auxiliary/tss/"*.proto
  "$PROTO_ROOT/services/state/hints/"*.proto
  "$PROTO_ROOT/services/state/history/"*.proto
  "$PROTO_ROOT/platform/event/"*.proto
)
shopt -u nullglob

if [ "${#proto_files[@]}" -eq 0 ]; then
  say "$RED" "No .proto files found under $PROTO_ROOT"
  exit 1
fi

say "$CYAN" "Found ${#proto_files[@]} .proto files to process..."

# ---- Generate ----

if protoc \
  --proto_path="$PROTO_ROOT/services" \
  --proto_path="$PROTO_ROOT/platform" \
  --proto_path="$PROTO_ROOT/mirror" \
  --proto_path="$PROTO_ROOT/block" \
  --proto_path="$PROTO_ROOT/streams" \
  --proto_path="$PROTO_ROOT/sdk" \
  --dart_out="grpc:$PROTO_OUT" \
  "${proto_files[@]}"; then

  say "$CYAN" "Adding ignore_for_file to generated files..."

  IGNORE="// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment"

  # Only *.pb.dart files (not .pbenum, .pbgrpc or .pbjson), same as the
  # PowerShell version. Files that already start with the marker are
  # skipped, so running the script twice never duplicates the line.
  while IFS= read -r -d '' file; do
    first_chars="$(head -c 18 "$file")"
    if [ "$first_chars" != "// ignore_for_file" ]; then
      tmp="$file.tmp"
      { printf '%s\n' "$IGNORE"; cat "$file"; } > "$tmp"
      mv "$tmp" "$file"
    fi
  done < <(find "$PROTO_OUT" -type f -name '*.pb.dart' -print0)

  say "$GREEN" "Done! Dart classes generated in $PROTO_OUT"
else
  say "$RED" "Error generating Dart classes."
  exit 1
fi
