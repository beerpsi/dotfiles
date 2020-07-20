" install vim-plug if it doesn't exist

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Plugins
call plug#begin(expand('~/.vim/plugged'))
"" PLUGIN START
Plug 'arcticicestudio/nord-vim'
"" PLUGIN END
call plug#end()

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
 

