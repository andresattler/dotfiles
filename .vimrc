call plug#begin()
Plug 'w0rp/ale'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug '/usr/local/opt/fzf'
Plug 'digitaltoad/vim-pug'
Plug 'wavded/vim-stylus'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'cakebaker/scss-syntax.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ludovicchabant/vim-gutentags'
Plug 'elzr/vim-json'
Plug 'pbrisbin/vim-mkdir'
Plug 'jremmen/vim-ripgrep'
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
