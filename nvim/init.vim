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

" Tab maps
" nnoremap <leader>1 1gt
" nnoremap <leader>2 2gt
" nnoremap <leader>3 3gt
" nnoremap <leader>4 4gt
" nnoremap tn  :tabnew<CR>
" nnoremap tq  :tabclose<CR>
" nnoremap to  :tabedit<Space>
" nnoremap tm  :tabmove<Space>
" nnoremap t[  :tabprev<CR>
" nnoremap t]  :tabnext<CR>
" nnoremap -  :tabfirst<CR>

" Directory view
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" NERD Commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" Search
map <C-f> /
map <C-r> :%s/

