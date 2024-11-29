# My Dotfiles

```bash
git clone https://github.com/thomasjpfan/dotfiles --recurse-submodules
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

## Link

```bash
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/condarc ~/.condarc

mkdir -p ~/.config/git
ln -sf ~/dotfiles/gitconfig.ini ~/.config/git/config
ln -sf ~/dotfiles/gitignore_global ~/.config/git/ignore
ln -sf ~/dotfiles/gitattributes ~/.config/git/attributes
ln -sf ~/dotfiles/ripgreprc ~/.config/ripgreprc

ln -sf ~/dotfiles/bin ~/bin
ln -sf ~/dotfiles/direnvrc ~/.direnvrc
mkdir -p ~/.config/karabiner
mkdir -p ~/.jupyter
ln -sf ~/dotfiles/karabiner.json  ~/.config/karabiner/karabiner.json
ln -sf ~/dotfiles/jupyter_config.json ~/.jupyter/jupyter_config.json
ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml

mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/nvim-config.vim ~/.config/nvim/init.vim
```

```bash
ln -sf ~/dotfiles/espanso "$(espanso path config)"
```

## Install vim plugins

```bash
nvim +PlugInstall +qall
```

## OSX setup

```bash
sh osx_setup.sh
```

# Linux

1. Install dependencies

```
sudo apt install zsh neovim tmux fzf
curl -sS https://starship.rs/install.sh | sh
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
"${SHELL}" <(curl -L micro.mamba.pm/install.sh)

$ curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb
$ sudo dpkg -i ripgrep_14.1.0-1_amd64.deb
```

2. Install oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

3. Link .zshrc

```
ln -sf ~/dotfiles/zshrc ~/.zshrc

source ~/.zshrc
```

4. Install `lsd`

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install lsd
```

5. Link files

```
mkdir -p ~/.config/nvim

ln -s -f ~/dotfiles/tmux.conf ~/.tmux.conf
ln -sf  ~/dotfiles/nvim-config.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/condarc ~/.condarc

mkdir -p ~/.config/git
ln -sf  ~/dotfiles/git-linux/config ~/.config/git/config
ln -sf  ~/dotfiles/gitignore_global ~/.config/git/ignore
ln -sf ~/dotfiles/direnvrc ~/.direnvrc
```

5. Install neovim plugins:

```
nvim +PlugInstall +qall
```
