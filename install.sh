#!/usr/bin/env bash
set -euo pipefail

: "${GH_USER:=YOUR_GITHUB_USERNAME}"

RAW_URL="https://raw.githubusercontent.com/${GH_USER}/add-app/main/bin/add-app"
TARGET="${HOME}/.local/bin/add-app"

mkdir -p "$(dirname "$TARGET")"
curl -fsSL "$RAW_URL" -o "$TARGET"
chmod +x "$TARGET"

echo "Installed to: $TARGET"
if ! echo ":$PATH:" | grep -q ":$HOME/.local/bin:"; then
  echo
  echo "Add to PATH for current shell:"
  echo '  export PATH="$HOME/.local/bin:$PATH"'
  echo
  echo "Persist by adding to ~/.bashrc or ~/.zshrc:"
  echo '  echo '\''export PATH="$HOME/.local/bin:$PATH"'\'' >> ~/.bashrc'
fi
