set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Helpers/Utils
Plugin 'wincent/command-t'
Plugin 'easymotion/vim-easymotion'
" Plugin 'tpope/vim-surround'
" Plugin 'ciaranm/detectindent'

" Development environment tools
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'majutsushi/tagbar'
" Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'
" Plugin 'tpope/vim-fugitive'
" Plugin 'airblade/vim-gitgutter'

" Language support/Syntax highlighting
" Plugin 'klen/python-mode'
Plugin 'avakhov/vim-yaml'
Plugin 'bash-support.vim'
Plugin 'ekalinin/Dockerfile.vim'
" Plugin 'fatih/vim-go'
" Plugin 'suan/vim-instant-markdown'
" Plugin 'syslog-syntax-file'
Plugin 'rust-lang/rust.vim'

" Themes and visual
Plugin 'maciakl/vim-neatstatus'
" Plugin 'lilydjwg/colorizer'
" Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required

" Force bash instead of zsh within vim.
set shell=bash\ -i

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

" Auto-reloads vimrc changes
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufWritePost ~/.vimrc source ~/.vimrc

let mapleader = '\'

" Theme/visual settings
syntax enable
set t_Co=16
" colorscheme desert
set background=dark

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" Toggle paste mode.
nmap <leader>p :set paste!<CR>

" Toggle for seeing line breaks and trailing spaces.
nmap <leader>l :set list!<CR>
set listchars=tab:>-,eol:¬,nbsp:▪,trail:▪

" NeatStatusLine customizations
let g:NeatStatusLine_color_normal = 'ctermbg=Black ctermfg=Magenta'
let g:NeatStatusLine_color_insert = 'ctermbg=Yellow ctermfg=Black'
let g:NeatStatusLine_color_replace = 'ctermbg=Red ctermfg=Black'
let g:NeatStatusLine_color_filetype = 'ctermfg=0 ctermbg=13'
let g:NeatStatusLine_color_modified = 'ctermbg=Black ctermfg=Yellow'
let g:NeatStatusLine_color_line = 'ctermbg=Black ctermfg=Cyan'
:hi StatusLine ctermfg=0 ctermbg=1

" Omni completion
set omnifunc=syntaxcomplete#Complete

" tagbar bindings
" let g:tagbar_ctags_bin
" nmap <Leader><Leader>b :TagbarToggle<CR>

" syntastic bindings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Detect Indent plugin settings, prefer expandtab and prefer 4 spaces.
" :let g:detectindent_preferred_expandtab = 1
" :let g:detectindent_preferred_indent = 4

" Markdown preview
let g:instant_markdown_autostart = 0
au FileType markdown nmap <Leader><Leader>m :InstantMarkdownPreview<CR>

" vim-go bindings
" au FileType go nmap <Leader>ds <Plug>(go-def-split)
" au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
" au FileType go nmap <Leader>dt <Plug>(go-def-tab)
" au FileType go nmap <Leader>gd <Plug>(go-doc)
" au FileType go nmap <Leader>gdv <Plug>(go-doc-vertical)
" au FileType go nmap <Leader>gdb <Plug>(go-doc-browser)
" au FileType go nmap <Leader>gi <Plug>(go-implements)
" au FileType go nmap <Leader>gr <Plug>(go-rename)

" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_build_constraints = 1

" commandt bindings
map <Leader>r :CommandTFlush<CR>
let g:CommandTWildIgnore=&wildignore . ",**/node_modules/*"

" easymotion bindings, highlighting in searches
map <Leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
nmap <Leader><Leader>s <Plug>(easymotion-s2)
nmap <Leader><Leader>t <Plug>(easymotion-t2)

" Navigation bindings
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Move the recording binding to Ctrl-q because I fat finger it too often.
nnoremap q <NOP>
noremap <C-q> q

" Copy/cut visual selection to clipboard (pbcopy).
vmap <C-c> :w !pbcopy<CR><CR> 
vmap <C-x> :!pbcopy<CR>  

" Misc vim options
set backspace=indent,eol,start
set ignorecase
set gcr+=a:blinkon0
set mouse=a
set noerrorbells
set nostartofline
set number
set scrolloff=5
set showcmd
set showmatch
" set hlsearch
" set title

" Tabs
set autoindent
" set copyindent
" set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4
" set tabstop=4
" set shiftround

" File type-specific settings
set modeline
" autocmd FileType yaml set tabstop=2 expandtab shiftwidth=2 softtabstop=2 syntax=yaml
autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab

" Persistent undo
" set undodir=~/.vimundo                  " Where undo files are saved
" set undofile                            " Undo diffs are saved in files
" set undolevels=10000                    " Max number of undos per file
" set undoreload=100000                   " Save the whole buffer for undo when reloading it

" Backup
set nobackup
set nowritebackup

" Performance
set synmaxcol=256
set ttyfast " u got a fast terminal
set ttyscroll=10
set lazyredraw " to avoid scrolling problems


" Open buffers with cursor set to its last position
autocmd BufReadPost *
  \ if line("'\'") > 0 && line("'\'") <= line("$") |
    \   exe "normal g`\"" |
      \ endif

" File extension-specific settings

