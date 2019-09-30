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
  Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
  Plug 'rust-lang/rust.vim'

  " Styling
  Plug 'flazz/vim-colorschemes'
  Plug 'ryanoasis/vim-devicons'

  " File Navigation
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug '/usr/local/opt/fzf'

Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'pbrisbin/vim-mkdir'

" Git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" General
Plug 'w0rp/ale'
Plug 'Quramy/tsuquyomi'
Plug 'vim-airline/vim-airline'
Plug 'Valloric/MatchTagAlways'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-sensible'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'Yggdroot/indentLine'
Plug 'tomtom/tcomment_vim'
Plug 'junegunn/vim-peekaboo'
Plug 'arecarn/vim-crunch'
Plug 'arecarn/vim-selection'
call plug#end()

set encoding=UTF-8

" Change workpath to path of opened file
set autochdir

" Colors
set background=dark
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme solarized8_dark

" Airline
let g:airline_powerline_fonts = 1

map <C-n> :NERDTreeToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '/node_modules/'

" Linters
let g:ale_linters = {
\   'typescript': ['eslint'],
\}
let g:ale_fixers = {
\   'typescript': ['prettier'],
\}

" --- Typescript -----
" Automaticly tslint on save
" autocmd BufWritePost *.ts,*.tsx call tslint#run('a', get_winid())
"
set ballooneval
autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()

autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

" Options
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

set clipboard=unnamedplus

" Autocompleation
filetype plugin on
syntax on
set omnifunc=syntaxcomplete#Complete

set mouse=a

set relativenumber
" diferent cursor in inster Mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Remap ctrl+arrow to switch windows
noremap <C-LEFT> <C-w>h
noremap <C-DOWN> <C-w>j
noremap <C-UP> <C-w>k
noremap <C-RIGHT> <C-w>l

