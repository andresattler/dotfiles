execute pathogen#infect()

set encoding=UTF-8

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
\   'javascript': ['standard'],
\}


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
