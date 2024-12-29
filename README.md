# .dotfiles

## Vim


```bash
# Configured for vim 9.1 for YouCompleteMe
# requires  +python3
# VIM - Vi IMproved 9.1

# Install dependencies
brew install cmake icu4c clang-format # MacOS

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp dot.vimrc ~/.vimrc
vim +PluginInstall +qall

```
