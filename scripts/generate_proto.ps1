# scripts/generate_proto.ps1
# Generates Dart classes from Hedera HAPI Protobuf definitions
$PROTO_ROOT = "C:\Users\Miguel\Documents\GitHub\hedera-protobufs"
$PROTO_OUT  = "lib\src\proto"

Write-Host "Generating Dart classes from Hedera HAPI protos..." -ForegroundColor Cyan

# Create output directory if it doesn't exist
if (-not (Test-Path $PROTO_OUT)) {
    New-Item -ItemType Directory -Path $PROTO_OUT | Out-Null
}

# Generate Dart classes from all .proto files in services/
# Include all subdirectories as proto_path for cross-imports
$protoFiles = @()
$protoFiles += Get-ChildItem "$PROTO_ROOT\services\*.proto" |
    ForEach-Object { $_.FullName }
$protoFiles += Get-ChildItem "$PROTO_ROOT\services\auxiliary\hints\*.proto" |
    ForEach-Object { $_.FullName }
$protoFiles += Get-ChildItem "$PROTO_ROOT\services\auxiliary\history\*.proto" |
    ForEach-Object { $_.FullName }
$protoFiles += Get-ChildItem "$PROTO_ROOT\services\auxiliary\tss\*.proto" |
    ForEach-Object { $_.FullName }
$protoFiles += Get-ChildItem "$PROTO_ROOT\services\state\hints\*.proto" |
    ForEach-Object { $_.FullName }
$protoFiles += Get-ChildItem "$PROTO_ROOT\services\state\history\*.proto" |
    ForEach-Object { $_.FullName }
$protoFiles += Get-ChildItem "$PROTO_ROOT\platform\event\*.proto" |
    ForEach-Object { $_.FullName }

Write-Host "Found $($protoFiles.Count) .proto files to process..." -ForegroundColor Cyan

protoc `
    --proto_path="$PROTO_ROOT\services" `
    --proto_path="$PROTO_ROOT\platform" `
    --proto_path="$PROTO_ROOT\mirror" `
    --proto_path="$PROTO_ROOT\block" `
    --proto_path="$PROTO_ROOT\streams" `
    --proto_path="$PROTO_ROOT\sdk" `
    --dart_out="grpc:$PROTO_OUT" `
    $protoFiles

if ($LASTEXITCODE -eq 0) {
    Write-Host "Adding ignore_for_file to generated files..." -ForegroundColor Cyan
    Get-ChildItem -Recurse -Filter "*.pb.dart" $PROTO_OUT | ForEach-Object {
        $content = Get-Content $_.FullName -Raw
        $ignore = "// ignore_for_file: annotate_overrides, camel_case_types, comment_references, constant_identifier_names, curly_braces_in_flow_control_structures, deprecated_member_use, deprecated_member_use_from_same_package, directives_ordering, library_prefixes, non_constant_identifier_names, prefer_final_fields, return_of_invalid_type, unnecessary_const, unnecessary_import, unnecessary_this, unused_import, unused_shown_name, unintended_html_in_doc_comment`n"
        if (-not $content.StartsWith("// ignore_for_file")) {
        # if (-not $content.Contains("unintended_html_in_doc_comment")) {
            Set-Content $_.FullName -Value ($ignore + $content) -NoNewline
        }
    }
    Write-Host "Done! Dart classes generated in $PROTO_OUT" -ForegroundColor Green
} else {
    Write-Host "Error generating Dart classes." -ForegroundColor Red
    exit 1
}