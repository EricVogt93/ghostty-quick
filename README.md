# ghostty-quick

Zellij session manager for Ghostty's Quick Terminal (dropdown). Provides persistent terminal sessions with configurable layouts.

## Features

- Persistent `dropdown` session that survives terminal closes
- Auto-attach to existing sessions (including dead ones)
- Configurable split layouts (single, hsplit, vsplit, quad)
- Works with Ghostty's F12 Quick Terminal

## Installation

```bash
# Clone
git clone https://github.com/yourusername/ghostty-quick.git
cd ghostty-quick

# Install
./install.sh
```

## Usage

```bash
# Via alias
zj

# Or directly
ghostty-quick
```

## Configuration

Edit `~/.config/ghostty/splits.conf`:

```bash
# Layout options: single, hsplit, vsplit, quad
LAYOUT=single
```

## Layouts

- `single` - One pane (default)
- `hsplit` - Two panes, horizontal split
- `vsplit` - Two panes, vertical split
- `quad` - Four panes

## Ghostty Setup

Add to `~/.config/ghostty/config`:

```
quick-terminal-position = top
quick-terminal-animation-duration = 0.1
keybind = global:f12=toggle_quick_terminal
```

## Requirements

- [Ghostty](https://ghostty.org)
- [Zellij](https://zellij.dev)
