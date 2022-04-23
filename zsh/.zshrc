# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


export ZSH="/home/alex/.oh-my-zsh"
export TERM="xterm-kitty"
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export RUSTUP_HOME=$HOME/.config/.rustup
export CARGO_HOME=$HOME/.config/.cargo
source $ZSH/oh-my-zsh.sh

# time command
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

#zsh_theme="gallifrey"

return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
host_color="%(!.%{$fg[red]%}.%{$fg[yellow]%})"

PROMPT="${host_color}%m%{$reset_color%}:: %2~ \$(git_prompt_info)%{$reset_color%}%B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"

unset return_code host_color

plugins=(
    git
    zsh-autosuggestions
)

# alias
alias zshconfig="nvim ~/.zshrc"
alias nvconf="nvim ~/.config/nvim/init.vim"
alias bspwm="nvim ~/.config/bspwm/bspwmrc"
alias cfn="nvim ~/.config/nvim/init.lua"

#nvim
alias vim="nvim"
alias nivm="nvim"
alias nvmi="nvim"
alias vnim="nvim"
alias nv="nvim"
alias v="nvim"
alias n="nvim"

alias nf="neofetch"
alias bye="shutdown now"
alias again="reboot"
alias cd.="cd .."
alias ls="logo-ls"

# plugin sudo [Esc] [Esc]
sudo-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == sudo\ * ]]; then
        LBUFFER="${LBUFFER#sudo }"
    else
        LBUFFER="sudo $LBUFFER"
    fi
}
zle -N sudo-command-line
# Defined shortcut keys: [Esc] [Esc]
bindkey "\e\e" sudo-command-line
