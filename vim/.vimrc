" install vim-plug if it doesn't exist

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin(expand('~/.vim/plugged'))
    Plug 'arcticicestudio/nord-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'vim-syntastic/syntastic'
    Plug 'vimwiki/vimwiki'
    Plug 'preservim/nerdtree'
call plug#end()

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let mapleader=" "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" color and fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Colorscheme
colorscheme nord

" Set UTF8 as standard encoding
set encoding=utf8

" Use Unix as standard filetype
set ffs=unix,dos,mac

" Make lightline uses Nord colorscheme
let g:lightline = {
    \ 'colorscheme': 'nord',
    \ } 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show current position
set ruler

" Always show line numbers 
set number

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Incremental search
set incsearch

" Don't redraw while executing macros
set lazyredraw

" Don't show mode because we have Lightline
set noshowmode 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" text, tab, indent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show status line
set laststatus=2

" Format status line
set statusline=\%F%m%r%h\ %w\ Line:\ %l\ \ Column:\ %c

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 

