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
set foldmethod=syntax
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
"noremap  i   k
"noremap  k   j
"noremap  j   h

"noremap  I  5k
"noremap  K  5k
"noremap  J  5j
"noremap  L  5l

"noremap  h  i
"noremap  H  I

noremap  ; :
noremap  q ZZ

"Emacs-like insert mapping
inoremap <c-f> <right>
inoremap <c-b> <left>
inoremap <c-p> <up>
inoremap <c-n> <down>
inoremap <c-a> <c-o>I
inoremap <c-e> <c-o>A
inoremap <c-d> <c-o>daw
inoremap <a-p> <c-o>p
inoremap <c-s> <c-o>:w<CR>
inoremap <c-,> <c-o>:call CompileRunGcc()<CR>



noremap  <s-k> 5k
noremap  <s-j> 5j
"noremap  <c-i> <c-b>
"noremap  <c-k> <c-d>

noremap  <leader>q q
" Cancel High Light
noremap  <leader><cr>  :nohlsearch<cr>

" Open the built in terminal
noremap  <c-j> :terminal<CR>
" Save the file
noremap s :w<CR>
" ReExp
noremap ` :%s/
" copy everthing to text
noremap <leader>cp :%y+<CR>
" Jump through the splits
map <leader>k  <c-w>k
map <leader>j  <c-w>j
map <leader>h  <c-w>h
map <leader>l  <c-w>l
" autosource the file
noremap <leader>ss :so %<cr>

"wrap using za

"Open a file quickly using leader+o
noremap <leader>o :!open %<cr>

"figlet ASCII Art
noremap <leader>as :r !figlet 

" date
nnoremap <leader>da "=strftime("%a %d %b %y")<cr>p


" Ingnore cases in command mode
set ignorecase
set smartcase
" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <C-W>z :ZoomToggle<CR>
# source $HOME/.vim/vimrc/plug.vim
# source $HOME/.vim/vimrc/theme.vim
# source $HOME/.vim/vimrc/coc.vim
# source $HOME/.vim/vimrc/run.vim
# source $HOME/.vim/vimrc/path.vim
