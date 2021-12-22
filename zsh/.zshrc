# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/alex/.oh-my-zsh"
export TERM="xterm-256color"

ZSH_THEME="lambda"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# alias
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias bspwm="nvim ~/.config/bspwm"
alias nvimconfig="nvim ~/.config/nvim/init.vim"

alias dcs="docker container start"
alias gr="go run ."

alias nivm="nvim"
alias nvmi="nvim"
alias v="nvim"
alias vnim="nvim"
alias nv="nvim"
alias nf="neofetch"
alias bye="shutdown now"
alias cd.="cd .."
