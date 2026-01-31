# ghostty-quick

Persistent zellij session for Ghostty's Quick Terminal.

## Install

```bash
git clone https://github.com/EricVogt93/ghostty-quick.git
cd ghostty-quick
./install.sh
```

Add to your shell rc:
```bash
alias zj='ghostty-quick'
```

## Usage

```bash
zj
```

Creates or attaches to a persistent `dropdown` zellij session.

## Config

Set `GHOSTTY_SESSION` env var to use a different session name.

## Requirements

- [Ghostty](https://ghostty.org)
- [Zellij](https://zellij.dev)
