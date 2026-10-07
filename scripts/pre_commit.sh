#!/usr/bin/env bash
# scripts/pre_commit.sh
# Runs the pre-commit checks: format, analyze and test.
# macOS / Linux equivalent of scripts/pre_commit.ps1.
#
# Usage (from any directory):
#   ./scripts/pre_commit.sh

CYAN='\033[36m'
YELLOW='\033[33m'
GREEN='\033[32m'
RED='\033[31m'
RESET='\033[0m'

say() {
  printf '%b%s%b\n' "$1" "$2" "$RESET"
}

# Always run from the repository root.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.." || exit 1

say "$CYAN" "Running pre-commit checks..."

printf '\n'
say "$YELLOW" "1. Formatting..."
if ! dart format .; then
  say "$RED" "Formatting failed!"
  exit 1
fi

printf '\n'
say "$YELLOW" "2. Analyzing..."
if ! dart analyze; then
  say "$RED" "Analysis failed!"
  exit 1
fi

printf '\n'
say "$YELLOW" "3. Testing..."
if ! flutter test; then
  say "$RED" "Tests failed!"
  exit 1
fi

printf '\n'
say "$GREEN" "All checks passed! Ready to commit."
