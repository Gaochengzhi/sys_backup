" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"      ____              __     ___                    
"     / ___| __ _  ___   \ \   / (_)_ __ ___  _ __ ___ 
"    | |  _ / _` |/ _ \   \ \ / /| | '_ ` _ \| '__/ __|
"    | |_| | (_| | (_) |   \ V / | | | | | | | | | (__ 
"     \____|\__,_|\___/     \_/  |_|_| |_| |_|_|  \___|
"                                                      
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"---Here are the minimal vimrc files for simple config:
"---1. basic setup
"---2. key mapping
"---3. global shortcut without any dependences

"
"---Tab switch
"
"
nnoremap <S-n> :tabn<cr>
nnoremap <S-p> :tabp<cr>
"
"---Clean up some buffers
"
"
"function! CloseHiddenBuffers()
    "let open_buffers = []

    "for i in range(tabpagenr('$'))
        "call extend(open_buffers, tabpagebuflist(i + 1))
    "endfor

    "for num in range(1, bufnr("$") + 1)
        "if buflisted(num) && index(open_buffers, num) == -1
            "exec "bdelete ".num
        "endif
    "endfor
"endfunction

"au BufEnter * call CloseHiddenBuffers()
"
"---Global setting
"
"
let mapleader=" "
set nocompatible
set noswapfile
set viminfo='1000
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set t_ut=
set expandtab
let tabstop=4
set clipboard=unnamed
set ts=4
set sw=4
let shiftwidth=4
let softtabstop=4
set tw=0
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set scrolloff=8


set autochdir
" Back to last time edit
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set foldmethod=indent        
set showmode
set showcmd
"set mouse=a
set encoding=utf-8
set t_Co=256
set autoindent
set textwidth=80
set wrap
set linebreak
set showmatch
set hlsearch
set incsearch
set history=100
set wildmenu
set wildmode=longest:list,full
set termwinsize=13x200
set hidden
set splitbelow
set shortmess+=c
set nomore
set signcolumn=no
set novb
set vb t_vb=
set nrformats-=octal

" Keymapping
noremap  i   k
noremap  k   j
noremap  j   h

noremap  I  5k
noremap  K  5j
noremap  J  5h
noremap  L  5l

noremap  h  i
noremap  H  I

noremap  ; :
noremap  q ZZ
" paging
noremap  <c-i> <c-b>
noremap  <c-k> <c-d>

noremap  <leader>h K
noremap  <leader>q q
" Cancel High Light
noremap  <leader><cr>  :nohlsearch<cr>
" Open the built in terminal
noremap  <c-j> :terminal<CR>
" Save the file
noremap s :w<CR>
" ReExp
noremap ` :%s/
" Jump through the splits
map <leader>i  <c-w>k
map <leader>k  <c-w>j
map <leader>j  <c-w>h
map <leader>l  <c-w>l
" autosource the file
noremap <leader>ss :so %<cr>

"wrap using za

"Open a file quickly using leader+o
noremap <leader>o :!open %<cr>

"figlet ASCII Art
noremap <leader>a :r !figlet 

" date
nnoremap <leader>da "=strftime("%a %d %b %y")<cr>p
source $HOME/.vim/vimrc/plug.vim
source $HOME/.vim/vimrc/theme.vim
source $HOME/.vim/vimrc/coc.vim
source $HOME/.vim/vimrc/run.vim
source $HOME/.vim/vimrc/path.vim

