"
"  __  __        __     _____ __  __ ____   ____
" |  \/  |_   _  \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| | | | |  \ \ / / | || |\/| | |_) | |
" | |  | | |_| |   \ V /  | || |  | |  _ <| |___
" |_|  |_|\__, |    \_/  |___|_|  |_|_| \_\\____|
"         |___/
"
" Author: Cheng Huang
" Adviced by: TheCW @bilibili.com (https://github.com/theniceboy)
" Date: Sun Jul 18 18:41:32 CST 2021
"
" RGB: 39.72.98
"

syntax on

let mapleader=" "

set nocompatible

filetype off
filetype indent on
filetype plugin on
filetype plugin indent on

" enable mouse
set mouse=a
set encoding=utf-8
let &t_ut=''

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" mark whitespace at the end of lines
set list
set listchars=tab:▸\ ,trail:▫

set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99

" set different type for index in different mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" set current dir as work dir
set autochdir

" make index come back to the location where you last exit
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set number
" set relativenumber

set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" split setting
map se :set splitright<CR>:vsplit<CR>
map sw :set nosplitright<CR>:vsplit<CR>
map sa :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>

" key remap
noremap i k
noremap h i
noremap j h
noremap k j

noremap I 5k
noremap K 5j
noremap J b
noremap L w
noremap H I

noremap + nzz
noremap _ Nzz
noremap <LEADER><CR> :nohlsearch<CR>
noremap <LEADER>- :0<CR>
noremap <LEADER>= :$<CR>

inoremap kk <ESC>

" Quick commit
vnoremap cc :normal H// <CR>

" map for nerdtree
noremap ff :NERDTreeToggle<CR>

" key map
map R :source $MYVIMRC<CR>
map Q :q<CR>
map S :w<CR>
map ; :

map <LEADER>a <C-w>k
map <LEADER>d <C-w>j
map <LEADER>w <C-w>h
map <LEADER>e <C-w>l

map <LEADER><up> :res +5<CR>
map <LEADER><down> :res -5<CR>
map <LEADER><left> :vertical resize-5<CR>
map <LEADER><right> :vertical resize+5<CR>
 
map tu :tabe<CR>
map tp :-tabnext<CR>
map tn :+tabnext<CR>
map = :bn<CR>
map - :bp<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

" Spell checking
map <LEADER>sc :set spell!<CR>

" Force save
map <LEADER>fs :w !sudo tee %<CR>

"
"
"            Plug Space!!
"
"
"
" call plug#begin('~/.vim/plugged')
" 
" " Airline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" 
" " Theme and color scheme
" Plug 'yuttie/hydrangea-vim'
" Plug 'jacoborus/tender.vim'
" 
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" 
" call plug#end()
" 
" let g:airline#extensions#tabline#enabled = 1
" let macvim_skip_colorscheme = 1
" " set laststatus=2 
" " let g:airline_powerline_fonts = 1
" " if !exists('g:airline_symbols')
" " let g:airline_symbols = {}
" " endif
" " let g:airline_left_sep = '▶'
" " let g:airline_left_alt_sep = '❯'
" " let g:airline_right_sep = '◀'
" " let g:airline_right_alt_sep = '❮'
" " let g:airline_symbols.linenr = '¶'
" " let g:airline_symbols.branch = '⎇'
" " 
" " NerdTree-git
" let g:NERDTreeGitStatusIndicatorMapCustom = {
              " \ 'Modified'  :'✹',
              " \ 'Staged'    :'✚',
              " \ 'Untracked' :'✭',
              " \ 'Renamed'   :'➜',
              " \ 'Unmerged'  :'═',
              " \ 'Deleted'   :'✖',
              " \ 'Dirty'     :'✗',
              " \ 'Ignored'   :'☒',
              " \ 'Clean'     :'✔︎',
              " \ 'Unknown'   :'?',
              " \ }
" 
" " let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" let g:airline_theme = 'tender'
" " colorscheme tender 
" " let g:lightline = { 'colorscheme': 'tender' }
" 
" " let g:airline#extensions#whitespace#enabled = 0
" 
" 
" set rtp+=~/.vim/bundle/Vundle.vim
" 
" call vundle#begin()
" 
" Plugin 'ycm-core/YouCompleteMe'
" 
" call vundle#end()
