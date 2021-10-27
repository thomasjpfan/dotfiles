# Check list for new Mac

```bash
git clone https://github.com/thomasjpfan/osx_dotfiles
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

# Link

```bash
ln -s -f ~/osx_dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/osx_dotfiles/zshrc ~/.zshrc
ln -sf ~/osx_dotfiles/condarc ~/.condarc
ln -s -f ~/osx_dotfiles/gitconfig .gitconfig
ln -sf ~/osx_dotfiles/gitignore_global ~/.gitignore_global
```


## OSX setup

```bash
sh osx_setup.sh
```
