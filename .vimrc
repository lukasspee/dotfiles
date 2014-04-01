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

" Pathogen (add pathogen.vim to ~/.vimrc/autoload/)
execute pathogen#infect()

" I use the following Pathogen bundles (add to ~/.vimrc/bundle/):
" * ...

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
