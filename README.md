# ghostty-quick

Persistent multiplexer session for Ghostty's Quick Terminal (or any terminal). Auto-detects zellij or tmux.

## Install

```bash
git clone https://github.com/EricVogt93/ghostty-quick.git
cd ghostty-quick
./install.sh
```

Add to your shell rc:
```bash
alias gq='ghostty-quick'
```

## Usage

```bash
gq
```

Creates or attaches to a persistent `dropdown` session.

## Config

| Variable | Default | Description |
|----------|---------|-------------|
| `GQ_SESSION` | `dropdown` | Session name |
| `GQ_MUX` | `auto` | Multiplexer: `auto`, `zellij`, `tmux` |

## Requirements

- [zellij](https://zellij.dev) or [tmux](https://github.com/tmux/tmux)

## License

MIT
