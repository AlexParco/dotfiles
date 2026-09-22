#!/usr/bin/env bash
# Installs everything the macOS configs depend on. Run it before ../setup.
# Safe to run again: every step is skipped when already installed.

set -euo pipefail

[[ "$(uname -s)" == "Darwin" ]] || { echo "macOS only"; exit 1; }

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# ── Homebrew ────────────────────────────────────────────────────────────────
if ! command -v brew >/dev/null; then
  echo "→ Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"

# ── oh-my-zsh (ships the lambda theme the .zshrc uses) ──────────────────────
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  echo "→ oh-my-zsh"
  RUNZSH=no KEEP_ZSHRC=yes \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "✓ oh-my-zsh"
fi

# ── tpm (tmux plugin manager; press prefix + I inside tmux afterwards) ──────
if [[ ! -d "$HOME/.tmux/plugins/tpm" ]]; then
  echo "→ tpm"
  git clone --depth 1 https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
else
  echo "✓ tpm"
fi

# ── formulae, casks and VS Code extensions ──────────────────────────────────
echo "→ brew bundle"
brew bundle --file="$HERE/Brewfile"

cat <<'EOF'

Done. Next:
  ../setup                 link the configs
  tmux, then prefix + I    install the tmux plugins

Still manual:
  - Liga SFMono Nerd Font (alacritty's font)
  - SSH keys and cloud credentials
  - tokens in ~/.zshrc.local
  - node (nvm/volta) + pnpm + bun
  - nvim formatters: stylua, gofumpt, goimports, ruff, prettierd
EOF
