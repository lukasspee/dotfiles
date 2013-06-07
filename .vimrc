" This is Lukas Spee's .vimrc file

" General
set nocompatible
set backspace=indent,eol,start
set nobackup
set noswapfile
set history=1000
set ruler
set showcmd
set incsearch
set hlsearch

filetype plugin indent on
set autoindent

" Spaces and tabs
set expandtab
set tabstop=2
set shiftwidth=2

" Window size
set winheight=30
set winminheight=5
set winwidth=79

" Keyword navigation
filetype plugin on
runtime macros/matchit.vim

" Display line numbers
set number

" Wildmode
set wildmode=longest,list
set wildmenu

" Pathogen
execute pathogen#infect()

" Solarized
syntax enable
set background=dark
colorscheme solarized
