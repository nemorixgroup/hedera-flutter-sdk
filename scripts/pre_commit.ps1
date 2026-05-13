Write-Host "Running pre-commit checks..." -ForegroundColor Cyan

Write-Host "`n1. Formatting..." -ForegroundColor Yellow
dart format .
if ($LASTEXITCODE -ne 0) {
    Write-Host "Formatting failed!" -ForegroundColor Red
    exit 1
}

Write-Host "`n2. Analyzing..." -ForegroundColor Yellow
dart analyze
if ($LASTEXITCODE -ne 0) {
    Write-Host "Analysis failed!" -ForegroundColor Red
    exit 1
}

Write-Host "`n3. Testing..." -ForegroundColor Yellow
flutter test
if ($LASTEXITCODE -ne 0) {
    Write-Host "Tests failed!" -ForegroundColor Red
    exit 1
}

Write-Host "`nAll checks passed! Ready to commit." -ForegroundColor Green