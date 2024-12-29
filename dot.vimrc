set nocompatible              " Disable compatibility with old vi
filetype off                  " Turn off filetype detection

" Set encoding
set encoding=utf-8
set fenc=utf-8
set termencoding=utf-8

" Enable filetype detection and plugins
set filetype=on
filetype plugin on
filetype indent on

" Syntax highlighting
syntax on

" Indentation settings
set autoindent                " Auto-indent new lines
set smartindent               " Smart indenting based on syntax
set tabstop=4                 " Number of spaces tabs count for
set shiftwidth=4              " Number of spaces to use for each step of (auto)indent
set expandtab                 " Use spaces instead of tabs

" Display settings
set number                    " Show line numbers
set textwidth=120            " Wrap lines at 120 characters

" Plugin settings using Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" List of plugins to install
Plugin 'Valloric/YouCompleteMe'  " Code completion engine for C/C++
Plugin 'scrooloose/syntastic'    " Syntax checking plugin
Plugin 'wenlongche/SrcExpl'      " SrcExpl
Plugin 'vim-scripts/taglist.vim' " Taglist
Plugin 'preservim/nerdtree'      " NerdTree
Plugin 'wenlongche/Trinity'      " Trinity

" Initialize plugins (run :PluginInstall after saving)
filetype plugin indent on

" Other optional settings for better usability
set cursorline                  " Highlight the current line
set hlsearch                     " Highlight search results

let g:ycm_confirm_extra_conf = 0

" SrcExpl settings START
" SrcExpl settings END

" Trinity START
" Open and close all the three plugins on the same time 
nmap <F8>  :TrinityToggleAll<CR> 

" Open and close the Source Explorer separately 
nmap <F9>  :TrinityToggleSourceExplorer<CR> 

" Open and close the Taglist separately 
nmap <F10> :TrinityToggleTagList<CR> 

" Open and close the NERD Tree separately 
nmap <F11> :TrinityToggleNERDTree<CR> 
" Trinity END
