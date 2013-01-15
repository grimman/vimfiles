" Enable pathogen bundle manager
call pathogen#infect()

" Automatically reload .vimrc
au! BufWritePost .vimrc source %

" Some visual settings
set guifont=Consolas:h12:cDEFAULT
syntax on
set background=dark
colorscheme solarized

set number
set colorcolumn=80
highlight ColorColumn ctermbg=233

set history=700
set undolevels=700

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set nobackup
set nowritebackup
set noswapfile
