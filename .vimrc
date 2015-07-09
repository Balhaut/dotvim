set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'scrooloose/syntastic'
" Plugin 't9md/vim-chef'
Plugin 'kien/ctrlp.vim'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'avakhov/vim-yaml'
" Plugin 'tomtom/tcomment_vim'
" Plugin 'ggreer/the_silver_searcher'

" Themes
Plugin 'altercation/vim-colors-solarized'
" Plugin 'wincent/command-t'

call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Reloads vimrc changes
autocmd BufWritePost ~/.vimrc source ~/.vimrc
set showcmd
let mapleader = " "

" Set theme
syntax enable
set background=dark
colorscheme solarized

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
noremap <C-a> :CtrlP ~/Projects/<CR>

" Silver Surfer
" let g:ackprg = 'ag --vimgrep'

map <Leader>t :NERDTree<CR>

" NERDTree Tabs
map <Leader>n <plug>:NERDTreeTabsToggle<CR>
"let g:nerdtree_tabs_open_on_gui_startup=1
"let g:nerdtree_tabs_open_on_console_startup=1
"let g:nerdtree_tabs_smart_startup_focus=1
