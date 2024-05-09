let mapleader=" "
colorscheme desert

"""""""""""""""""""""""""""""""""
"""""""########SETS#######""""""
"""""""""""""""""""""""""""""""
set relativenumber "number the current line
set number "number of lines
set tabstop=2 "set four spaces for tap
set noshowmode 
set smartindent 
set autoindent "make auto indent set expandtab "swap tap with spaces
set hlsearch "make highlighting for search
set splitright
set splitbelow
set nobackup
set mouse="i"
set pumheight=10
set ignorecase "ignore case when searching
set encoding=utf-8 
set wildmenu
set history=100
set noswapfile
set shiftwidth=2
set wildmenu "make window for cmd complition
set laststatus=2
set termguicolors

"""""""""""""""""""""""""""""""""
"""""########KEY-MAPS#######""""
"""""""""""""""""""""""""""""""
"open fzf
nnoremap <leader>f :FZF<CR>

"source vimrc 
nnoremap <leader>r :source $MYVIMRC<CR> :nohl<CR> :echo 'source vimrc done :)'<CR> 

"change buffers next.pre
nnoremap <C-n> :bnext <CR>
nnoremap <C-p> :bprevious <CR>

"move text up and down
nnoremap <C-d> <Esc>:m .+1 <CR>==gi<Esc>
nnoremap <C-u> <Esc>:m .-2 <CR>==gi<Esc>

"clear highlights 
map <leader>l :nohl<CR>

"copy and paste
map <leader>p :.!xclip -o -selection clipboard<CR>:echo '  ' <CR>
map <leader>y : !xclip -i -selection clipboard&& xclip -o -selection clipboard <CR>

"window navigations
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"""""""""""""""""""""""""""""""""
"""""#######PLUGINS#######""""""
"""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"this plugs for snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

"status bar 
Plug 'itchyny/lightline.vim'

"make color for any hex text 
Plug 'ap/vim-css-color'

"buffer 
Plug 'jeetsukumaran/vim-buffergator'
"gruvbox
Plug 'gruvbox-community/gruvbox'
call plug#end()

