# .dotfiles

## Vim


```bash
# Configured for vim 9.1 for YouCompleteMe
# requires  +python3
# VIM - Vi IMproved 9.1

# Install dependencies
#    YouCompleteMe
brew install cmake icu4c clang-format # MacOS 
#    FZF (fuzzy finder for vim)
brew install fzf bat ripgrep the_silver_searcher perl universal-ctags


# Get monokai theme
curl -so ~/.vim/colors/monokai.vim https://raw.githubusercontent.com/ku1ik/vim-monokai/refs/heads/master/colors/monokai.vim

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp dot.vimrc ~/.vimrc
vim +PluginInstall +qall

```


```bash
# vim +:PluginInstall
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/icu4c@76/lib/pkgconfig"
set -gx CPPFLAGS "-I/opt/homebrew/opt/icu4c@76/include"
set -gx LDFLAGS "-L/opt/homebrew/opt/icu4c@76/lib"
fish_add_path /opt/homebrew/opt/icu4c@76/sbin
fish_add_path /opt/homebrew/opt/icu4c@76/bin
./install.py --all
# Then run vundle install
vim +:PluginInstall 
```
