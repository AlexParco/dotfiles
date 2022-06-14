# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ORACLE_HOME=/opt/oracle/product/18c/dbhomeXE
export ORACLE_SID=XE

export ZSH="/home/alex/.oh-my-zsh"
# export TERM="xterm-256color"
export TERM="xterm-kitty"
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:$ORACLE_HOME/bin
source $ZSH/oh-my-zsh.sh

return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
host_color="%(!.%{$fg[red]%}.%{$fg[yellow]%})"
PROMPT="${host_color}%m%{$reset_color%}:: %2~ \$(git_prompt_info)%{$reset_color%}%B$%b "
RPS1="${return_code}"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
unset return_code host_color

plugins=(
    git
)


# alias
alias zshconfig="nvim ~/.zshrc"
alias nvconf="nvim ~/.config/nvim/init.vim"
alias bspwm="nvim ~/.config/bspwm/bspwmrc"
alias cfn="nvim ~/.config/nvim/init.lua"

alias nivm="nvim"

alias nf="neofetch"
alias bye="shutdown now"
alias again="reboot"

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
# [Esc] [Esc]
bindkey "\e\e" sudo-command-line

[ -f "/home/alex/.ghcup/env" ] && source "/home/alex/.ghcup/env" # ghcup-env

# opam configuration
[[ ! -r /home/alex/.opam/opam-init/init.zsh ]] || source /home/alex/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
