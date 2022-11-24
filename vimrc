let mapleader=" "


"""""""""""""""""""""""""""""""""
"""""""########SETS#######""""""
"""""""""""""""""""""""""""""""
set number "number of lines
set relativenumber "number the current line
syntax on 

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
"""""########KEY-MAPS#######""""
"""""""""""""""""""""""""""""""
"open buffers window with fzf style
nnoremap <leader>b :Buffers<CR>

"open fzf
nnoremap <leader>f :FZF<CR>

"source vimrc 
nnoremap <leader>r :source $MYVIMRC<CR> :nohl<CR> :echo 'source vimrc done :)'<CR> 

"change buffers next.pre
nnoremap <C-n> :bnext <CR>
nnoremap <C-p> :bprevious <CR>

"clear hilights 
map <leader>l :nohl<CR>

"copy and paste
map <leader>p :.!xclip -o -selection clipboard<CR>:echo '  ' <CR>
map <leader>y v : !xclip -i -selection clipboard && xclip -o -selection clipboard<CR>:echo 'copy done :)' <CR>

"""""""""""""""""""""""""""""""""
"""""#######PLUGINS#######""""""
"""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/Colorizer'
"pywal for vim
Plug 'dylanaraps/wal.vim'
"this plugs for snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
call plug#end()
"skdfjalsdf

