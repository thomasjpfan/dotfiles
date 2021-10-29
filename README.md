# Dotfiles

```bash
git clone https://github.com/thomasjpfan/dotfiles --recurse-submodules
```

1. Install zsh, autojump, direnv, tmux and [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
2. Install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

3. Link .zshrc

```bash
ln -sf ~/dotfiles/zshrc ~/.zshrc
```

5. Install spaceship

```bash
mkdir ~/.zfunctions
ln -sf ~/dotfiles/spaceship-prompt/spaceship.zsh ~/.zfunctions/prompt_spaceship_setup
```

6. Install mambaforge

```bash
curl -L -O https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh
sh Mambaforge-Linux-x86_64.sh
```

7. Link files

```bash
mkdir -p ~/.config/nvim

ln -s -f ~/dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/nvim-config.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/condarc ~/.condarc
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/direnvrc ~/.direnvrc
```

4. Install neovim plugins

```bash
nvim +PlugInstall +qall
```
