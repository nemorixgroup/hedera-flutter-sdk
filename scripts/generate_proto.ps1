# scripts/generate_proto.ps1
# Generates Dart classes from Hedera HAPI Protobuf definitions

$PROTO_ROOT   = "C:\Users\Miguel\Documents\GitHub\hedera-protobufs"
$PROTO_OUT    = "lib\src\proto"

Write-Host "Generating Dart classes from Hedera HAPI protos..." -ForegroundColor Cyan

# Create output directory if it doesn't exist
if (-not (Test-Path $PROTO_OUT)) {
    New-Item -ItemType Directory -Path $PROTO_OUT | Out-Null
}

# Generate Dart classes from all .proto files in services/
# Include all subdirectories as proto_path for cross-imports
protoc `
    --proto_path="$PROTO_ROOT\services" `
    --proto_path="$PROTO_ROOT\platform" `
    --proto_path="$PROTO_ROOT\mirror" `
    --proto_path="$PROTO_ROOT\block" `
    --proto_path="$PROTO_ROOT\streams" `
    --proto_path="$PROTO_ROOT\sdk" `
    --dart_out="grpc:$PROTO_OUT" `
    $(Get-ChildItem "$PROTO_ROOT\services\*.proto" | ForEach-Object { $_.Name })

if ($LASTEXITCODE -eq 0) {
    Write-Host "Done! Dart classes generated in $PROTO_OUT" -ForegroundColor Green
} else {
    Write-Host "Error generating Dart classes." -ForegroundColor Red
    exit 1
}