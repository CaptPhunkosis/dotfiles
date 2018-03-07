set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'kien/ctrlp.vim.git'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'

Plugin 'klen/python-mode'
Plugin 'CaptPhunkosis/scala-vundle'
Plugin 'fatih/vim-go'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'diepm/vim-rest-console'
Plugin 'mileszs/ack.vim'

call vundle#end()

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set number
set nopaste
set ruler
set ignorecase
set smartcase
set showcmd
set ai
set scrolloff=6
set hlsearch
set backspace=indent,eol,start

autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2

filetype plugin indent on

" Remove trailing whitespace.
autocmd BufWritePre * :%s/\s\+$//e

" Visuals
syntax on
set background=dark
set t_Co=256
colorscheme etsy

set laststatus=2


" ctrlp options
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'


" AIRLINE
let g:airline_powerline_fonts = 1
let g:airline_theme='etsy'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1

let g:airline#extensions#tmuxline#enabled = 1


let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ }


"python-mode
let g:pymode_folding = 0

let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 0
let g:pymode_lint_checker = "pyflakes,pep8"

" Auto check on save
let g:pymode_lint_write = 1

let g:pymode_options_max_line_length = 0

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all





if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
