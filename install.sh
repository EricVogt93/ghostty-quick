#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Detect XDG paths (works on Linux/macOS/BSD)
CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
BIN_DIR="${XDG_BIN_HOME:-$HOME/.local/bin}"

echo "Installing ghostty-quick..."

# Install script
mkdir -p "$BIN_DIR"
cp "$SCRIPT_DIR/bin/ghostty-quick" "$BIN_DIR/ghostty-quick"
chmod +x "$BIN_DIR/ghostty-quick"

# Install zellij layouts
mkdir -p "$CONFIG_HOME/zellij/layouts"
cp "$SCRIPT_DIR/layouts/"*.kdl "$CONFIG_HOME/zellij/layouts/"

# Example config
if [[ ! -f "$CONFIG_HOME/ghostty/splits.conf" ]]; then
    mkdir -p "$CONFIG_HOME/ghostty"
    cp "$SCRIPT_DIR/splits.conf.example" "$CONFIG_HOME/ghostty/splits.conf"
fi

echo "Done!"
echo ""
echo "Add to your shell rc:"
echo "  alias zj='ghostty-quick'"
echo ""
echo "Make sure $BIN_DIR is in your PATH"
