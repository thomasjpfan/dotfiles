export ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=$HOME/dotfiles/zsh_custom
SPACESHIP_DIR_TRUNC=5
SPACESHIP_BATTERY_SHOW=false
SPACESHIP_HG_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_EMBER_SHOW=false


plugins=(tmux z zsh-autosuggestions zsh-syntax-highlighting)
zstyle ':bracketed-paste-magic' active-widgets '.self-*'

if [ -f "$HOME/.bash_profile" ]; then
	source "$HOME/.bash_profile"
elif [ -f "$HOME/.bashrc" ]; then
	source "$HOME/.bashrc"
fi
source $ZSH/oh-my-zsh.sh

bindkey '^t' autosuggest-execute

export EDITOR="nvim"
alias vim="nvim"
alias p3="python3"
alias i3="ipython3"

export HISTCONTROL=ignoreboth:erasedups
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

autoload -U promptinit; promptinit
prompt spaceship

if ! [ -x "$(command -v direnv)" ]; then
    eval "$(direnv hook zsh)"
fi
