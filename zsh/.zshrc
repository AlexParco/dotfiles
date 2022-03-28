# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/alex/.oh-my-zsh"
export TERM="xterm-256color"
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# time command
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

ZSH_THEME="gallifrey"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# alias
alias zshconfig="nvim ~/.zshrc"
alias bspwm="nvim ~/.config/bspwm/bspwmrc"
alias cfn="nvim ~/.config/nvim/init.lua"

#go
alias gr="go run"
alias gb="go build"

#nvim
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
alias ls="logo-ls"
