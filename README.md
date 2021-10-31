# Check list for new Mac

```bash
git clone https://github.com/thomasjpfan/osx_dotfiles --recurse-submodules
```

## ZSH

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Brew

```bash
brew install autojump
brew install direnv
brew install tmux
brew install tmuxinator
brew install neovim
brew install wakeonlan
brew install gh
brew install git-delta
brew install pre-commit
```

## Apps

```bash
brew install --cask 1password
brew install --cask visual-studio-code
brew install --cask slack
brew install --cask kaleidoscope
brew install --cask alfred
brew install --cask BetterTouchTool
brew install --cask gpg-suite
brew install --cask moom
brew install --cask finicky
brew install --cask firefox
brew install --cask dash
brew install --cask discord
brew install --cask zoom
```

## Mac App store

- ReadKit
- TweetBot
- GoodTask
- Flow
- Wireguard
- Refined GitHub
- LanScan

## Fonts

```bash
brew tap homebrew/cask-fonts
brew install font-fira-code
brew install font-fira-code-nerd-font
```

## Install conda

Follow instructions at: https://github.com/conda-forge/miniforge#mambaforge

```bash
curl -L -O https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-MacOSX-arm64.sh
sh Mambaforge-MacOSX-arm64.sh
```

## Link

```bash
ln -sf ~/osx_dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/osx_dotfiles/zshrc ~/.zshrc
ln -sf ~/osx_dotfiles/condarc ~/.condarc
ln -sf ~/osx_dotfiles/gitconfig .gitconfig
ln -sf ~/osx_dotfiles/gitignore_global ~/.gitignore_global
ln -sf ~/osx_dotfiles/direnvrc ~/.direnvrc

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
