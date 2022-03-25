# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/alex/.oh-my-zsh"
export TERM="xterm-256color"
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

ZSH_THEME="gallifrey"

plugins=(
    git
    zsh-autosuggestions
)
# (cat ~/.cache/wal/sequences &)

source $ZSH/oh-my-zsh.sh

# alias
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias bspwm="nvim ~/.config/bspwm"
alias cfn="nvim ~/.config/nvim/init.lua"

alias dcs="docker container start"

alias gr="go run"
alias gb="go build"

alias nivm="nvim"
alias nvmi="nvim"
alias v="nvim"
alias vnim="nvim"
alias nv="nvim"
alias n="nvim"

alias nf="neofetch"
alias bye="shutdown now"
alias again="reboot"
alias cd.="cd .."
alias emacs="emacs -nw"
alias ls="logo-ls"
