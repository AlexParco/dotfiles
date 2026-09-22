# Dotfiles

My configuration for macOS and Arch Linux.

```
.
├── setup        # links everything for the current OS
├── git/         # shared
├── nvim/        # shared
├── macos/       # zsh, tmux, alacritty, vscode + Brewfile, bootstrap.sh
└── linux/       # zsh, tmux, alacritty, i3, bspwm, polybar, rofi, sxhkd, fonts
```

## Install

```sh
git clone https://github.com/AlexParco/dotfiles.git ~/.config/dotfiles
cd ~/.config/dotfiles
./macos/bootstrap.sh   # homebrew, oh-my-zsh, tpm, Brewfile (macOS only)
./setup --dry-run      # preview
./setup
```

Inside tmux, press `prefix + I` once to install the tmux plugins.

`setup` detects the OS (`uname -s`) and symlinks the shared configs plus the
ones in `macos/` or `linux/`. Existing files are moved to
`~/.dotfiles-backup/<timestamp>/` first, so it is safe to run again.

Nothing personal or secret is versioned. It lives in files `setup` creates as
empty templates when missing:

| File | Holds |
| ---- | ----- |
| `~/.gitconfig.local` | git identity and per-directory includes |
| `~/.zshrc.local` | tokens, credentials and per-machine values |
