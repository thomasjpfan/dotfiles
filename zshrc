# rust
[[ -d "$HOME/.cargo/bin" ]] &&
    export PATH=$HOME/.cargo/bin:$PATH
[[ -e "$HOME/.cargo/env" ]] &&
    source $HOME/.cargo/env

type nvim >/dev/null &&
    alias vi=nvim &&
    alias vim=nvim

type bat >/dev/null &&
    alias cat='bat'

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
setopt NO_NOMATCH

plugins=(tmux z extract gpg-agent fzf zsh-syntax-highlighting
    zsh-autosuggestions)

zstyle ':bracketed-paste-magic' active-widgets '.self-*'

source $ZSH/oh-my-zsh.sh

bindkey '^t' autosuggest-execute

export HISTCONTROL=ignoreboth:erasedups
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export OS=$(uname)

export LESS="-SRXF"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export EDITOR=nvim
export PATH=$HOME/miniconda3/bin:$PATH
export PATH=$HOME/bin:$PATH

# gpg agent
export GPG_TTY=$(tty)

# homebrew
if [[ $OS = "Darwin" ]]; then
    export PATH=/usr/local/bin:$PATH

    # libomp
    # export OMP_NUM_THREADS=8
    export CC=/usr/bin/clang
    export CXX=/usr/bin/clang++
    export CPPFLAGS="$CPPFLAGS -Xpreprocessor -fopenmp"
    export CFLAGS="$CFLAGS -I/usr/local/opt/libomp/include"
    export CXXFLAGS="$CXXFLAGS -I/usr/local/opt/libomp/include"
    export LDFLAGS="$LDFLAGS -Wl,-rpath,/usr/local/opt/libomp/lib -L/usr/local/opt/libomp/lib -lomp"
    export AR=/usr/bin/ar
    source "$HOME/.bash_profile"
else
    # not osx
    export PATH="/usr/local/cuda/bin:$PATH"
    export CUDA_NVCC_EXECUTABLE="$HOME/bin/cuda/nvcc"
    export CUDNN_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu
    export CUDNN_INCLUDE_PATH=/usr/include
fi

autoload -U promptinit
promptinit
prompt spaceship

if [ -x "$(command -v direnv)" ]; then
    eval "$(direnv hook zsh)"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
