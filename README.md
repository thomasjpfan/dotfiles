# Check list for new Mac

```bash
git clone https://github.com/thomasjpfan/osx_dotfiles --recurse-submodules
```

## ZSH

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install brew files

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew bundle install
```

## Install conda

Follow instructions at: https://github.com/conda-forge/miniforge#mambaforge

```bash
curl -L -O https://github.com/conda-forge/miniforge#install
bash Miniforge3-$(uname)-$(uname -m).sh
```

## Link

```bash
ln -sf ~/osx_dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/osx_dotfiles/zshrc ~/.zshrc
ln -sf ~/osx_dotfiles/condarc ~/.condarc

mkdir -p ~/.config/git
ln -sf ~/osx_dotfiles/gitconfig.ini ~/.config/git/config
ln -sf ~/osx_dotfiles/gitignore_global ~/.config/git/ignore
ln -sf ~/osx_dotfiles/gitattributes ~/.config/git/attributes
ln -sf ~/osx_dotfiles/ripgreprc ~/.config/ripgreprc

ln -sf ~/osx_dotfiles/bin ~/bin
ln -sf ~/osx_dotfiles/direnvrc ~/.direnvrc
mkdir -p ~/.config/karabiner
mkdir -p ~/.jupyter
ln -sf ~/osx_dotfiles/karabiner.json  ~/.config/karabiner/karabiner.json
ln -sf ~/osx_dotfiles/jupyter_config.json ~/.jupyter/jupyter_config.json
ln -sf ~/osx_dotfiles/starship.toml ~/.config/starship.toml

mkdir -p ~/.config/nvim
ln -sf ~/osx_dotfiles/nvim-config.vim ~/.config/nvim/init.vim
```

## Install vim plugins

```bash
nvim +PlugInstall +qall
```

## OSX setup

```bash
sh osx_setup.sh
```

Add the following to `~/.zprofile` for tmux

```bash
if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi
```
