" Enable pathogen bundle manager
call pathogen#infect()

" Map leader to comma and map :e .vimrc
let mapleader=","
nmap <silent> <leader>ev :e $myvimrc<CR>

" Automatically reload .vimrc
au! BufWritePost .vimrc source %

" Some visual settings
set guifont=Consolas:h12:cDEFAULT
syntax on
set background=dark
colorscheme solarized
set visualbell
set noerrorbells

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Disable GUI crap
if has("gui_running")
    set guioptions-=m   " Menu bar
    set guioptions-=T   " Toolbar
    " set guioptions-=r " Righthand scrollbar

    set lines=50 columns=110
endif

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

set nobackup
set nowritebackup
set noswapfile
