" ### General Settings
set nocompatible
set ruler
set showmode
set laststatus=2
set lazyredraw
set showcmd
set whichwrap=b,s,h,l,<,>,[,]
set undolevels=1000
set history=200
set showmatch
set nojoinspaces
set backspace=2
set sidescroll=8
set scroll=11
set scrolloff=5
if version >= 703
    set relativenumber
endif
nmap <BS> X

" ### Special mapping for tab navigation
nnoremap <M-Left>  :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>

" ### Search Options
set ignorecase
set magic
set incsearch
set hlsearch

" ### Formatting
set noautoindent
set textwidth=72
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab

" ### Syntax Highlighting
syntax on
"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\v\s+$| +\ze\t|\S\zs\t+ +|^\s*( {8})+//
match ErrorMsg '\s\+$'

" ### Color Scheme
set t_Co=256
set background=dark
colorscheme tir_black
" disable bold fonts globally
set t_md=

" ### Misc

" mute search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" comment/uncomment blocks of code
vmap ,c :s/^/#/gi<Enter>
vmap ,C :s/^#//gi<Enter>

" start prove within vim
map ,t <Esc>:!prove -vl %<CR>
map ,T <Esc>:!prove -vl % \\|less<CR>

" check perl syntax
map ,s <Esc>:!perl -c %:t<CR>

" debug macro
imap <F3> use Data::Dumper qw(Dumper);<CR>warn Dumper [];

" enable/disable relative line numbers
map <F2> : set relativenumber!<CR>

" toggle paste mode
set pastetoggle=<F8>

" code skeletons for perl
autocmd BufNewFile *.pm 0r ~/.vim/skeleton.pm
autocmd BufNewFile *.pl 0r ~/.vim/skeleton.pl

set wildmode=longest,list

set nolpl

set formatoptions=cq

if version >= 703
    set colorcolumn=81
    hi ColorColumn  ctermbg=LightGray
endif

" disable folding
set nofoldenable

" disable arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

inoremap jj <ESC>
