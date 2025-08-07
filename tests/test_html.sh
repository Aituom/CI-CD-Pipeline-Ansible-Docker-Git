#!/bin/bash
set -e

FILE="nginx/index.html"

if ! grep -q "<title>" "$FILE"; then
  echo "❌ HTML missing <title>"
  exit 1
fi

if ! grep -q "<h1>" "$FILE"; then
  echo "❌ HTML missing <h1>"
  exit 1
fi

echo "✅ HTML test passed"
