let mapleader=" "

"displaying text options
set nu
set rnu
set nuw =2
set nowrap
set shiftwidth=4 softtabstop=4 tabstop=4 expandtab


"highlighting options
"set bg =dark
set hlsearch
"set tgc
set ignorecase
set incsearch
set slm="cmd"


"windows options
set icon
set title
set noru
set scr=2


"command line editing 
set hi=200
set wildmode=full
set wmnu 
set fic
set wic 
set cwh =8
"set backup


"""""""""""""""""""""""""""""""""
"#######PLUGINS#######
"""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/Colorizer'
"this plugs for snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
call plug#end()
