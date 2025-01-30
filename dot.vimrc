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
Plugin 'junegunn/fzf'            " Fuzzy Finder
Plugin 'junegunn/fzf.vim'        " Fuzzy Finder
Plugin 'itchyny/lightline.vim'   " Light Line (hardstatus)
Plugin 'terryma/vim-multiple-cursors' " Mulitple line selection
Plugin 'tpope/vim-surround'      " vim-surround (auto brackets/parathenses/etc)
Plugin 'easymotion/vim-easymotion'


" Initialize plugins (run :PluginInstall after saving)
filetype plugin indent on

" Theme
" https://github.com/ku1ik/vim-monokai/tree/master
syntax enable
colorscheme monokai

" Other optional settings for better usability
set cursorline                  " Highlight the current line
set hlsearch                     " Highlight search results

" ycm complete
let g:ycm_confirm_extra_conf = 0
nnoremap gd :tab split \| YcmCompleter GoToDefinition<CR>

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

" Lightline START
set laststatus=2
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }
" Lightline END


" fzf  START
let $FZF_DEFAULT_COMMAND = 'rg --files'
let g:fzf_default_opts = '--height 50% --reverse --border'
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }
let g:fzf_default_opts .= ' --multi'

" Key mappings
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>g :Rg<CR>
nnoremap <silent> <leader>b :Buffers<CR>
" Map Ctrl+P to open fzf for files
nnoremap <silent> <C-p> :Files<CR>

" Search text in files using ripgrep
nnoremap <silent> <C-g> :Rg<CR>
" List open buffers
nnoremap <silent> <C-b> :Buffers<CR>
" fzf  END

" Easymotion START
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Easymotion END
