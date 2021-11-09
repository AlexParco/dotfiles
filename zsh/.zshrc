# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/alex/.oh-my-zsh"
export TERM="xterm-256color"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="powerlevel9k/powerlevel9k"

function sp {
  git branch > /dev/null 2>&1 || return 1
  git config user.initials
}

POWERLEVEL9K_DIR_BACKGROUND='237'
POWERLEVEL9K_CUSTOM_GIT_PAIR="echo \$(sp)"
POWERLEVEL9K_CUSTOM_GIT_PAIR_BACKGROUND="clear"
POWERLEVEL9K_CUSTOM_GIT_PAIR_FOREGROUND="blue"
POWERLEVEL9K_CUSTOM_GIT_PAIR_ICON="\uf7af"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="012"
POWERLEVEL9K_DIR_FOREGROUND='010'
POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_FOREGROUND="012"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="012"
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{008}/%F{cyan}"

POWERLEVEL9K_DIR_ETC_BACKGROUND="clear"
POWERLEVEL9K_ETC_ICON='%F{blue}\uf423'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"

POWERLEVEL9K_GO_ICON="\uf7b7"
POWERLEVEL9K_GO_VERSION_BACKGROUND='clear'
POWERLEVEL9K_GO_VERSION_FOREGROUND='081'

POWERLEVEL9K_HOME_ICON="\ufb26"

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable_joined custom_git_pair vcs_joined)
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='%F{008}\uf460%F{008}'

POWERLEVEL9K_LINUX_MANJARO_ICON="\uf312 "
POWERLEVEL9K_LINUX_UBUNTU_ICON="\uf31b "

POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" \uf054 "

POWERLEVEL9K_NVM_BACKGROUND='clear'
POWERLEVEL9K_NVM_FOREGROUND='green'

POWERLEVEL9K_OS_ICON_BACKGROUND='clear'
POWERLEVEL9K_OS_ICON_FOREGROUND='cyan'

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status go_version nvm)
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='%F{008}\uf104%F{008}'

POWERLEVEL9K_SHORTEN_DELIMITER='%F{008} …%F{008}'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="none"

POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="001"
POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_BACKGROUND="clear"
POWERLEVEL9K_CARRIAGE_RETURN_ICON="\uf071"

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m}"

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='green'

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

(cat ~/.cache/wal/sequences)
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias bspwm="nvim ~/.config/bspwm"
alias nvimconfig="nvim ~/.config/nvim/init.vim"

 # nvim alias
alias nivm="nvim"
alias nvmi="nvim"
alias v="nvim"
alias vnim="nvim"




