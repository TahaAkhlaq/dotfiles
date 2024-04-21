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
## Copyright & Licensing
Copyright (C) 2024 Taha Akhlaq <[takhlaq04@gmail.com](mailto:takhlaq04@gmail.com)>

Distributed under the MIT License. See `LICENSE` for details.

---

For more information on my projects and other academic work, please visit my [GitHub profile](https://github.com/TahaAkhlaq).
