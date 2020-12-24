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
SPACESHIP_DOCKER_SHOW=false

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800

plugins=(tmux z zsh-autosuggestions zsh-syntax-highlighting gpg-agent)
zstyle ':bracketed-paste-magic' active-widgets '.self-*'

source $ZSH/oh-my-zsh.sh

bindkey '^t' autosuggest-execute

export EDITOR="nvim"
alias vim="nvim"
alias cat='bat'
alias mux='tmuxinator'

export HISTCONTROL=ignoreboth:erasedups
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export LESS="-SRXF"

export OS=$(uname)
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export PATH=$HOME/anaconda3/bin:$PATH

# gpg agent
export GPG_TTY=$(tty)

# homebrew
if [[ $OS = "Darwin" ]]; then
    export PATH=/usr/local/bin:$PATH

    # libomp
    export OMP_NUM_THREADS=8
    export CC=/usr/bin/clang
    export CXX=/usr/bin/clang++
    export CPPFLAGS="$CPPFLAGS -Xpreprocessor -fopenmp"
    export CFLAGS="$CFLAGS -I/usr/local/opt/libomp/include"
    export CXXFLAGS="$CXXFLAGS -I/usr/local/opt/libomp/include"
    export LDFLAGS="$LDFLAGS -Wl,-rpath,/usr/local/opt/libomp/lib -L/usr/local/opt/libomp/lib -lomp"

    export PATH="$HOME/.cargo/bin:$PATH"
    source "$HOME/.bash_profile"
fi

autoload -U promptinit
promptinit
prompt spaceship

if [ -x "$(command -v direnv)" ]; then
    eval "$(direnv hook zsh)"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/thomasfan/anaconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
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
