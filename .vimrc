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

filetype plugin on

" Keyword navigation
runtime macros/matchit.vim

" Pathogen
execute pathogen#infect()

" Syntax highlighting
syntax on

" Display line numbers
set number

" Wildmode
set wildmode=longest,list
set wildmenu

" Trailing whitespace
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd BufWritePre * :call TrimWhiteSpace()

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
