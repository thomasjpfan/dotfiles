export ZSH=$HOME/.oh-my-zsh
fpath=( "$HOME/.zfunctions" $fpath )

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

plugins=(tmux z zsh-autosuggestions zsh-syntax-highlighting docker)
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
alias k=kubectl
alias kcd='kubectl config set-context $(kubectl config currentcontext) --namespace '
alias ping='prettyping --nolegend'
alias cat='bat'

export HISTCONTROL=ignoreboth:erasedups
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

autoload -U promptinit; promptinit
prompt spaceship

if [ -x "$(command -v direnv)" ]; then
    eval "$(direnv hook zsh)"
fi
