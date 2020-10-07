export ZSH=$HOME/.oh-my-zsh
fpath=("$HOME/.zfunctions" $fpath)

ZSH_CUSTOM=$HOME/dotfiles/zsh_custom
SPACESHIP_DIR_TRUNC=5
SPACESHIP_BATTERY_SHOW=false
SPACESHIP_HG_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800

plugins=(tmux z zsh-autosuggestions zsh-syntax-highlighting docker gpg-agent)
zstyle ':bracketed-paste-magic' active-widgets '.self-*'

if [ -f "$HOME/.bash_profile" ]; then
    source "$HOME/.bash_profile"
fi
if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
fi
source $ZSH/oh-my-zsh.sh

bindkey '^t' autosuggest-execute

export EDITOR="nvim"
alias vim="nvim"
alias cat='bat'
alias mux='tmuxinator'

export HISTCONTROL=ignoreboth:erasedups
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export LESS="-SRXF"

autoload -U promptinit
promptinit
prompt spaceship

if [ -x "$(command -v direnv)" ]; then
    eval "$(direnv hook zsh)"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/thomasfan/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/thomasfan/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/thomasfan/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/thomasfan/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Created by `userpath` on 2020-01-14 22:19:15
export PATH="$PATH:$HOME/.local/bin"
