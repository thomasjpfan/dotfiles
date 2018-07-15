# Dotfiles

## Tmux

1. Install tmux

2. Install settings

```bash
cd
ln -s -f ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s -f ~/dotfiles/tmux/tmux.conf.local ~/.tmux.conf.local
```

## Oh My ZSH

1. Install zsh

2. Install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

3. Link .zshrc

```bash
ln -sf ~/dotfiles/zshrc ~/.zshrc
```

4. Install spaceship

```bash
git submodule init
git submodule update
mkdir ~/.zfunctions
ln -sf ~/dotfiles/spaceship-prompt/spaceship.zsh ~/.zfunctions/prompt_spaceship_setup
```

## NeoVim

1. Install [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

2. Install [vim-plug](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. Install init.vim

```bash
ln -s -f ~/dotfiles/nvim-config/init.vim ~/.config/nvim/init.vim
```

4. Install plugins

```bash
nvim -c ":PlugInstall"
```

## OSX only

1. `./configure_osx.bash`
