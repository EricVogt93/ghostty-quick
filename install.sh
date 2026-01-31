#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing ghostty-quick..."

# Install main script
mkdir -p ~/.local/bin
cp "$SCRIPT_DIR/bin/ghostty-quick" ~/.local/bin/ghostty-quick
chmod +x ~/.local/bin/ghostty-quick

# Symlink for backwards compatibility
ln -sf ~/.local/bin/ghostty-quick ~/.local/bin/ghostty-dropdown

# Install zellij layouts
mkdir -p ~/.config/zellij/layouts
cp "$SCRIPT_DIR/layouts/"*.kdl ~/.config/zellij/layouts/ 2>/dev/null || true

# Install example config if none exists
if [[ ! -f ~/.config/ghostty/splits.conf ]]; then
    mkdir -p ~/.config/ghostty
    cp "$SCRIPT_DIR/splits.conf.example" ~/.config/ghostty/splits.conf
    echo "Created ~/.config/ghostty/splits.conf"
fi

echo "Done! Add this alias to your shell rc:"
echo "  alias zj='ghostty-quick'"
