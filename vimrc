set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim.git'
Bundle 'CaptPhunkosis/scala-vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'klen/python-mode'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'evidens/vim-twig.git'
Plugin 'fatih/vim-go'


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
"set textwidth=110
set hlsearch
set backspace=indent,eol,start

filetype plugin indent on

" ctrlp options
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_clear_cache_on_exit = 0


" VISUALS
syntax on
set background=dark
set t_Co=256
colorscheme etsy

set laststatus=2


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



" Remove trailing whitespace.
" autocmd BufWritePre * :%s/\s\+$//e


if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
