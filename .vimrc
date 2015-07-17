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
Plugin 'Lokaltog/vim-easymotion'
Plugin 'avakhov/vim-yaml'
" Plugin 'tomtom/tcomment_vim'
" Plugin 'ggreer/the_silver_searcher'
Plugin 'wincent/command-t'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

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
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufWritePost ~/.vimrc source ~/.vimrc
set showcmd
let mapleader = '\' 

" Set theme
syntax enable
"set t_Co=256
set background=dark
colorscheme solarized
"let g:solarized_termcolors=256

" Silver Surfer
" let g:ackprg = 'ag --vimgrep'

" CommandT bindings
map <Leader>g :CommandT ~/Projects<CR>
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" Easymotion highlighting during searches.
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" NERDTree bindings
map <Leader>e :NERDTree<CR>

" NERDTree Tabs
"map <Leader>n <plug>:NERDTreeTabsToggle<CR>
" let g:nerdtree_tabs_open_on_gui_startup=1
" let g:nerdtree_tabs_open_on_console_startup=1
" let g:nerdtree_tabs_smart_startup_focus=1

" Arrow key disables - breaking bad habits.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Use tabs for makefiles.
autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab

set tabstop=4
set expandtab
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smarttab
