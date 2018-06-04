call plug#begin()

" Languages
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'wavded/vim-stylus'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-pug'
Plug 'cakebaker/scss-syntax.vim'
Plug 'elzr/vim-json'
Plug 'kchmck/vim-coffee-script'

" Styling
Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'

" File Navigation
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jremmen/vim-ripgrep'
Plug 'pbrisbin/vim-mkdir'

" Git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" General
Plug 'w0rp/ale'
Plug 'Quramy/tsuquyomi'
Plug 'vim-airline/vim-airline'
Plug 'Valloric/MatchTagAlways'
Plug 'tpope/vim-surround'

call plug#end()

set encoding=UTF-8

set autochdir

" Colors
set background=dark
colorscheme solarized

" Airline
let g:airline_powerline_fonts = 1

map <C-n> :NERDTreeToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '/node_modules/'

" Linters
let g:ale_linters = {
\   'typescript': ['tslint'],
\}

" Automaticly tslint on save
" autocmd BufWritePost *.ts,*.tsx call tslint#run('a', get_winid())


" Options
set tabstop=2
set shiftwidth=2
set expandtab
:set smartindent

:set clipboard=unnamedplus

:filetype plugin on
:syntax on

set mouse=a

:set relativenumber
