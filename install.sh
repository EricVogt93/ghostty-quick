#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="${XDG_BIN_HOME:-$HOME/.local/bin}"

mkdir -p "$BIN_DIR"
cp "$SCRIPT_DIR/bin/ghostty-quick" "$BIN_DIR/"
chmod +x "$BIN_DIR/ghostty-quick"

echo "Installed to $BIN_DIR/ghostty-quick"
echo "Add alias: alias zj='ghostty-quick'"
