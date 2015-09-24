set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'wincent/command-t'

" Development environment tools
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Language support/Syntax highlighting
Plugin 'avakhov/vim-yaml'
Plugin 'markcornick/vim-terraform'
Plugin 'bash-support.vim'
" Plugin 't9md/vim-chef'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'fatih/vim-go'
Plugin 'suan/vim-instant-markdown'

" Themes and visual
Plugin 'maciakl/vim-neatstatus'
" Plugin 'lilydjwg/colorizer'
" Plugin 'altercation/vim-colors-solarized'

" Vim theme dev support - disable for everyday use.
"Plugin 'gerw/vim-HiLinkTrace'

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

" Auto-reloads vimrc changes
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufWritePost ~/.vimrc source ~/.vimrc

let mapleader = '\' 

" Theme/visual settings
syntax enable
set t_Co=16
set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256

" NeatStatusLine customizations
let g:NeatStatusLine_color_normal = 'ctermbg=Black ctermfg=Magenta'
let g:NeatStatusLine_color_insert = 'ctermbg=Yellow ctermfg=Black'
let g:NeatStatusLine_color_replace = 'ctermbg=Red ctermfg=Black'
let g:NeatStatusLine_color_filetype = 'ctermfg=0 ctermbg=13'
let g:NeatStatusLine_color_modified = 'ctermbg=Black ctermfg=Yellow'
let g:NeatStatusLine_color_line = 'ctermbg=Black ctermfg=Cyan'
:hi StatusLine ctermfg=0 ctermbg=1

" tagbar bindings
" let g:tagbar_ctags_bin
nmap <Leader><Leader>b :TagbarToggle<CR>

" syntastic bindings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Use tabs for makefiles.
autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab

" Markdown preview
let g:instant_markdown_autostart = 0
au FileType markdown nmap <Leader>p :InstantMarkdownPreview<CR>

" vim-chef bindings
" map <Leader>c :ChefFindAny<CR>

" vim-go bindings
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gdv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gdb <Plug>(go-doc-browser)
au FileType go nmap <Leader>gi <Plug>(go-implements)
au FileType go nmap <Leader>gr <Plug>(go-rename)

" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_build_constraints = 1

" commandt bindings
map <Leader>r :CommandTFlush<CR>
" map <Leader>g :CommandT ~/Projects<CR>

" easymotion bindings, highlighting in searches
map <Leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
nmap <Leader><Leader>s <Plug>(easymotion-s2)
nmap <Leader><Leader>t <Plug>(easymotion-t2)

" NERDTree bindings
"map <Leader>e :NERDTree<CR>

" NERDTree Tabs
"map <Leader>n <plug>:NERDTreeTabsToggle<CR>
"let g:nerdtree_tabs_open_on_gui_startup=1
"let g:nerdtree_tabs_open_on_console_startup=1
"let g:nerdtree_tabs_smart_startup_focus=1

" Arrow key disables - breaking bad habits.
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Copy/cut visual selection to clipboard (pbcopy).
vmap <C-c> :w !pbcopy<CR><CR> 
vmap <C-x> :!pbcopy<CR>  

" Misc vim options
set autoindent
set backspace=indent,eol,start
set copyindent
set expandtab
set ignorecase
"set mouse=a
set noerrorbells
set nostartofline
set number
set scrolloff=999
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set smarttab
set tabstop=4
set title
