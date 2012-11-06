syntax on
set t_Co=256
set guioptions=ce
let g:pep_8_map='<leader>8'
syntax on
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
let g:haddock_browser="/usr/bin/lynx"
au BufEnter *.hs compiler ghc
au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict
source ~/.vim/vundle.vim
colorscheme inkpot
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set nocompatible
let mapleader = ","

set foldmethod=indent
set foldlevel=99

set modelines=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <leader>j :JSLintToggle<cr>
inoremap <Nul> <C-x><C-u>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
map <leader>N :NERDTreeToggle<CR>
map <leader>l :bn<CR>
map <leader>h :bp<CR>
map <leader>w :bd<CR>

let g:pyflakes_use_quickfix = 0
set completeopt=menuone,longest,preview
set wrap

function! ToggleNumbering()
    if exists("+relativenumber")
        if &relativenumber
            set number
        else
            set relativenumber
        endif
    else
        set number!
    endif
endfunc

function! Setwidth2()
    set shiftwidth=2
    set tabstop=2
    set softtabstop=2
endfunc

function! Setwidth4()
    set shiftwidth=4
    set tabstop=4
    set softtabstop=4
endfunc


noremap <leader>n :call ToggleNumbering()<cr>
noremap <leader>2 :call Setwidth2()<cr>
noremap <leader>4 :call Setwidth4()<cr>

set listchars=tab:▸\ ,eol:¬
