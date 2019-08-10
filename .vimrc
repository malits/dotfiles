" set compatibility to vim only
set nocompatible

filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'

call vundle#end()
filetype plugin indent on

" syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" wrap text
set wrap

" Fix indentation for pasted text
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-0>:set invpaste paste?<CR>
set pastetoggle=<F2>

" max textwidth
set textwidth=79

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling
set scrolloff=5

" Fix common backspace problems
set backspace=indent,eol,start

" Speed up vim scrolling
set ttyfast

" Status bar
set laststatus=2

" Show mode and command
set showmode 
set showcmd

" Heighlight matching brackets
set matchpairs+=<:>

" Show line numbers
set number

" Set status line display
:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 


" Encoding
set encoding=utf-8

" Highlight search patterns
set hlsearch
" Incremental search
set incsearch
" Ignore casing
set ignorecase
" Only upper case works if search term is uppercase
set smartcase

" word processing for ya know, writing shit
func! WordProcessorMode()
    setlocal textwidth=80
    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfu

com! WP call WordProcessorMode()
