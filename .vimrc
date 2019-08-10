" set compatibility to vim only
set nocompatible

filetype off 

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'

Plugin 'sheerun/vim-polyglot'

Plugin 'sainnhe/gruvbox-material'

" Plugin 'itchyny/lightline.vim'

Plugin 'tpope/vim-eunuch'

Plugin 'tpope/vim-surround'

Plugin 'scrooloose/nerdtree'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'powerline/powerline'

call vundle#end()
filetype plugin indent on

" vim powerline
set rtp+=$HOME/.local/lib/python3.6/site-packages/powerline/bindings/vim

" colorscheme
colorscheme gruvbox-material

" automatically open NERDTree
autocmd vimenter * NERDTree

" automatically open NERDTree when vim opens a dir
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter *.if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" autoclose NERDTree if it's only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree shows dotfiles
let NERDTreeShowHidden=1

" NERDTree shortcut
map <C-t> :NERDTreeToggle<CR>

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

" colorscheme configuration for lighline
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }


