let mapleader = ","

call plug#begin(stdpath('data') . '/plugged')
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
call plug#end()

let base16colorspace=256
source ~/.vimrc_background

exec 'source' . stdpath('config') . '/defaults.vim'
exec 'source' . stdpath('config') . '/coc.vim'
exec 'source' . stdpath('config') . '/airline.vim'

" Buffer maps
nnoremap <leader>1 1<C-6>
nnoremap <leader>2 2<C-6>
nnoremap <leader>3 3<C-6>
nnoremap <leader>4 4<C-6>
nnoremap bb  :bfirst<CR>
nnoremap bn  :enew<CR>
nnoremap bq  :bp <BAR> bd #<CR>
nnoremap bl  :ls<CR>
nnoremap b[  :bprevious<CR>
nnoremap b]  :bnext<CR>

" Directory view
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" NERD Commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
map ,/ <plug>NERDCommenterToggle


" Search
map <C-f> /
map <C-r> :%s/

