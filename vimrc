" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Load plugins here (vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR> " Toggle tabs and EOL

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

augroup cursor_behaviour
    autocmd!

    " reset cursor on start:
    autocmd VimEnter * silent !echo -ne "\e[1 q"
    " cursor blinking bar on insert mode
    let &t_SI = "\e[5 q"
    " cursor steady block on command mode
    let &t_EI = "\e[1 q"

    " highlight current line when in insert mode
    autocmd InsertEnter * set cursorline
    " turn off current line highlighting when leaving insert mode
    autocmd InsertLeave * set nocursorline
augroup END
