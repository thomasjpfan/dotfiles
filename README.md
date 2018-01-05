# Dotfiles

## Tmux

1. Install tmux

1. Install settings

```bash
cd
ln -s -f ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s -f ~/dotfiles/tmux/tmux.conf.local ~/.tmux.conf.local
```

## Oh My ZSH

1. Install zsh

1. Install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

1. Link .zshrc

```bash
ln -s -f ~/dotfiles/zshrc ~/.zshrc
```

## NeoVim

1. Install [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

1. Install [vim-plug](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

1. Install init.vim

```bash
ln -s -f ~/dotfiles/nvim-config/init.vim ~/.config/nvim/init.vim
```

1. Install plugins

```bash
nvim -c ":PlugInstall"
```