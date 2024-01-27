# dotfiles

## Steps
1. Clone repo into .dotfiles
```
git clone git@github.com:TahaAkhlaq/dotfiles.git ~/.dotfiles
```

2. Create symlinks in the Home directory
```
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

3. Create Brewfile in .dotfiles
```
brew bundle dump --describe 
```
