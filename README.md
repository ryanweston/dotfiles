# dotfiles

Personal dotfiles for dev environment managed with [GNU Stow](https://www.gnu.org/software/stow/) and [Homebrew](https://brew.sh). Very hacked together, very much a work in progress.

## 📦 What's included

| Tool | Purpose |
|---|---|
| [Neovim](https://neovim.io) (LazyVim) | Editor — Vue/TS support, 10+ themes, transparent UI |
| [Ghostty](https://ghostty.org) | Terminal emulator |
| [Starship](https://starship.rs) | Minimal prompt with git status |
| [zoxide](https://github.com/ajeetdsouza/zoxide) | Smarter `cd` |
| [fzf](https://github.com/junegunn/fzf) | Fuzzy finder |
| [eza](https://github.com/eza-community/eza) | Modern `ls` replacement |
| [lazygit](https://github.com/jesseduffield/lazygit) | Terminal UI for git |

## 🚀 Quick start

```bash
git clone git@github.com:ryanweston/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Install Homebrew (if needed) and all packages
./install/install

# Symlink configs to ~
stow -d ~/dotfiles -t ~ home
```

## 🗂️ Structure

```
dotfiles/
├── install/
│   ├── install        # Bootstrap script (Homebrew + packages)
│   └── bundle         # Homebrew formulae and casks
└── home/              # Everything below here gets stowed to ~
    └── .config/
        ├── bash/      # Shell config, aliases, readline
        ├── ghostty/   # Terminal appearance and keybinds
        ├── nvim/      # LazyVim config and plugins
        └── starship.toml
```

## 🐚 Bash

Add the following to your `.bashrc` to source the bash config:

```bash
source ~/.config/bash/config
```

This sets up aliases (`ls` via eza, `cd` via zoxide, `ff` via fzf), history, readline, and prompt integrations.
