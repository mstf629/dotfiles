"setting space as leader key
let mapleader = " "

set nu
set incsearch
set hlsearch
set noruler
set relativenumber
set wildmenu
set noswapfile
set hidden
set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
"split below, right.
set splitbelow splitright
set scrolloff=12
" show arabic text in the proper way.
set termbidi
" set timeout
set timeoutlen=250
" from TFL
set nowrap
set  sidescroll=999 sidescrolloff=999

"Goyo
nnoremap <leader>g :Goyo<CR>

"fzf
source /usr/share/doc/fzf/examples/fzf.vim
nnoremap <leader>f :FZF<CR>
nnoremap <leader>b :Buffers<CR>

"source vimrc
nnoremap <leader>r :source $MYVIMRC<CR>
"edit vimrc
nnoremap <leader>e :wincmd v<bar> :e $MYVIMRC<CR>

"changing buffers
map <C-n> :bnext <CR>
map <C-p> :bprevious <CR>

set background=dark
colorscheme TNC
"""""""""""""""""""""""""""""""""
"#######PLUGINS#######
"""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'
"python autocomplete
Plug 'davidhalter/jedi-vim'
"this plugs for snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
call plug#end()



nnoremap <leader>p :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" quickly edit colorscheme
nnoremap <leader>t :wincmd v<bar> :find $HOME/.vim/colors/TNC.vim<CR>

map <silent><leader>c :w! \| !xelatex "<c-r>%"<CR>


" just testing 
function! Gruvbox()
    colorscheme gruvbox 
    hi normal ctermbg=none
endfunction
