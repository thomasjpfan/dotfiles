type nvim >/dev/null &&
    alias vi=nvim &&
    alias vim=nvim

type bat >/dev/null &&
    alias cat='bat'

type batcat >/dev/null &&
    alias cat='batcat'

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

setopt NO_NOMATCH

plugins=(tmux extract gpg-agent zsh-syntax-highlighting
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
export PATH=$HOME/mambaforge/bin:$PATH
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
    #export CUDA_NVCC_EXECUTABLE=/usr/lib/ccache/nvcc
    #export PATH="/usr/lib/ccache:$PATH"
    export CUDA_HOME=/usr/local/cuda
    export CUDNN_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu
    export PATH="/home/thomasfan/.local/bin:$PATH"
    export CUDNN_INCLUDE_PATH=/usr/include
    export CCACHE_BASEDIR=/home/thomasfan/Desktop
    unset CUDA_NVCC_EXECUTABLE
fi

autoload -U promptinit
promptinit
prompt spaceship

if [ -x "$(command -v direnv)" ]; then
    eval "$(direnv hook zsh)"
fi

. /usr/share/autojump/autojump.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/mambaforge/etc/profile.d/conda.sh" ]; then
        . "$HOME/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias cythonX="cython -X language_level=3 -X boundscheck=False -X wraparound=False -X initializedcheck=False -X nonecheck=False -X cdivision=True"
