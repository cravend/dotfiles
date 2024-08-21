" Sane defaults

set nocompatible                " Don't try to be vi compatible
set number                      " Show line numbers
set relativenumber              " Show relative line numbers
set tabstop=4                   " Number of spaces tabs count for
set shiftwidth=4                " Number of spaces to use for each step of (auto)indent
set expandtab                   " Use spaces instead of tabs
set smartindent                 " Automatically indent new lines
set autoindent                  " Copy indent from current line when starting a new line
set clipboard=unnamedplus       " Use system clipboard
set hlsearch                    " Highlight search results
set incsearch                   " Incremental search
set ignorecase                  " Ignore case when searching...
set smartcase                   " ...unless we use capital letters
set wildmode=longest,list       " Command-line completion mode
set scrolloff=8                 " Start scrolling when we're 8 lines away from margins
set wrap                        " Wrap long lines
set splitright                  " Vertical splits will automatically be to the right
set splitbelow                  " Horizontal splits will automatically be below
set termguicolors               " Enable 24-bit RGB color in the TUI
