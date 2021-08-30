" Don't try to be vi compatible
set nocompatible

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
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR> " Toggle tabs and EOL

augroup cursor_behaviour
    autocmd!

    " reset cursor on start:
    autocmd VimEnter * silent !echo -ne "\e[1 q"
    " cursor blinking bar on insert mode
    let &t_SI = "\e[5 q"
    " cursor steady block on command mode
    let &t_EI = "\e[1 q"
augroup END

