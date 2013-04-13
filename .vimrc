set encoding=utf-8

" Enable pathogen bundle manager
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

" Key mappings
let mapleader=","
nmap <silent> <leader>ev :e $myvimrc<CR>
nmap <silent> <leader>1 :so $home/.vim/Session.vim<CR>
nmap <silent> <leader>w1 :mks! $home/.vim/Session.vim<CR>
nmap <silent> <leader>nt :NERDTree<CR>
nmap <C-S> :update<CR>
vnoremap <leader>s :sort<CR>
cnoreabbrev Q q
vnoremap <Tab> :sort<CR>

" Automatically reload .vimrc
augroup AutoReloadVimRC
    au!
    au BufWritePost $myvimrc source %
augroup end

" Some visual settings
set guifont=Consolas\ for\ Powerline\ FixedD:h12:cDEFAULT
syntax on
set background=dark
colorscheme solarized
set visualbell
set noerrorbells

set laststatus=2        " Enable Powerline
let g:Powerline_symbols = 'fancy'

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Disable GUI crap
if has("gui_running")
    set guioptions-=m   " Menu bar
    set guioptions-=T   " Toolbar
    " set guioptions-=r " Righthand scrollbar

    set lines=50 columns=110
endif

" Bundles:
" Bundle 'gmarik/vundle'  " Vundle manages Vundle!
" 
" Bundle 'scrooloose/nerdtree'
" Bundle 'klen/python-mode'
" Bundle 'ervandew/supertab'
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'tpope/vim-fugitive'
" Bundle 'nathanaelkane/vim-indent-guides'
" Bundle 'Lokaltog/vim-powerline'
" Bundle 'mattn/zencoding-vim'

" Display line numbers and add a 80 character marker
set number
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Self explanatory ;)
set history=700
set undolevels=700

" Set tab width
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround          " Indent based on shiftwidth when using <>
set expandtab           " Convert tabs to spaces on insert
set autoindent

set nobackup
set nowritebackup
set noswapfile

set backspace=2         " Let backspace work like in other apps

set sessionoptions-=options
