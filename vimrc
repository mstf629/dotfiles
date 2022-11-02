let mapleader=" "

"""""""""""""""""""""""""""""""""
"""""""########SETS#######""""""
"""""""""""""""""""""""""""""""
set number "number of lines
set relativenumber "number the current line
syntax on 
colorscheme industry 
set tabstop=4 "set four spaces for tap
set autoindent "make auto indent 
set expandtab "swap tap to spaces
set hlsearch "make highlighting for search
set ignorecase "ignore case when searching
set encoding=utf-8 
set laststatus =2
set wildmenu "make window for cmd complition
set history =1000
set noswapfile


"""""""""""""""""""""""""""""""""
"""""#######PLUGINS#######""""""
"""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/Colorizer'
"this plugs for snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
call plug#end()

