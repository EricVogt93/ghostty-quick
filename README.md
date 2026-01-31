# ghostty-quick

Dropdown terminal with persistent multiplexer session for Ghostty. Auto-detects zellij or tmux.

## Install

### Arch Linux (AUR)

```bash
yay -S ghostty-quick
```

### Manual

```bash
git clone https://github.com/EricVogt93/ghostty-quick.git
cd ghostty-quick
./install.sh
```

## Usage

```bash
ghostty-quick              # Start/attach session
ghostty-quick toggle       # Open dropdown terminal window
ghostty-quick config       # Show configuration
ghostty-quick init         # Create default config file
```

### CLI Options

```bash
ghostty-quick -w 80% -h 50%       # Custom size
ghostty-quick -s mysession        # Custom session name
ghostty-quick -m tmux             # Force tmux
```

## Configuration

Config file: `~/.config/ghostty-quick/config`

```bash
# Create default config
ghostty-quick init

# Set values
ghostty-quick set width=100%
ghostty-quick set height=40%
ghostty-quick set hotkey=F12
ghostty-quick set session=dropdown
ghostty-quick set mux=auto
```

| Option | Default | Description |
|--------|---------|-------------|
| `WIDTH` | `100%` | Window width (px or %) |
| `HEIGHT` | `40%` | Window height (px or %) |
| `HOTKEY` | `F12` | Hotkey for toggle |
| `SESSION` | `dropdown` | Multiplexer session name |
| `MUX` | `auto` | Multiplexer: `auto`, `zellij`, `tmux` |

### Dimension Examples

```bash
ghostty-quick set width=100%      # Full screen width
ghostty-quick set width=1200px    # Fixed 1200 pixels
ghostty-quick set height=50%      # Half screen height
ghostty-quick set height=600px    # Fixed 600 pixels
```

## Hotkey Setup

```bash
# Auto-register with desktop environment (KDE)
ghostty-quick hotkey

# Or specify a different key
ghostty-quick hotkey Ctrl+\`
```

For other window managers, add to your config:

**Hyprland** (`~/.config/hypr/hyprland.conf`):
```
bind = , F12, exec, ghostty-quick toggle
```

**Sway** (`~/.config/sway/config`):
```
bindsym F12 exec ghostty-quick toggle
```

## Requirements

- [Ghostty](https://ghostty.org) terminal
- [zellij](https://zellij.dev) or [tmux](https://github.com/tmux/tmux)

## License

MIT
