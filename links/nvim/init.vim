let mapleader = ","

call plug#begin(stdpath('data') . '/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'github/copilot.vim'
Plug '/opt/homebrew/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

exec 'source' . stdpath('config') . '/defaults.vim'
exec 'source' . stdpath('config') . '/coc.vim'
exec 'source' . stdpath('config') . '/airline.vim'

colorscheme vim

" Other helpful key mappings
nnoremap <C-s> :w<CR>            " Save with Ctrl+s
inoremap <C-s> <Esc>:w<CR>a      " Save in insert mode with Ctrl+s
nnoremap <C-q> :q<CR>            " Quit with Ctrl+q
inoremap <C-q> <Esc>:q<CR>       " Quit in insert mode with Ctrl+q


" Directory view
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" Key mappings for search and replace
nnoremap <C-f> /
nnoremap <C-r> :%s/

autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q")
