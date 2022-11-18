
"
"---Here are some config for Plug settings
"
"
"vim-header
let g:header_field_author = 'Gao Chengzhi'
let g:header_field_author_email = '2673730435@qq.com'
let g:header_auto_update_header = 1
let g:header_field_license_id = 'The MIT License (MIT)'



"Auto install Plug
let g:coc_disable_startup_warning = 1 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ranger
let g:ranger_open_new_tab = 1

" leaderf
noremap <leader>pf :Leaderf file<CR>
noremap <leader>pp :Leaderf function<CR>
let g:Lf_CommandMap = {'<C-K>': ['<C-P>'], '<C-J>': ['<C-N>']}
let g:Lf_ShowDevIcons = 0
let g:Lf_PreviewInPopup = 1
let g:Lf_WindowPosition = 'popup'

" PlugInstall && Clean
"
noremap <leader>pi :PlugInstall<cr>
noremap <leader>pc :PlugClean<cr>
" Autoformat
"
au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
" MarkdownPreview
let g:mkdp_command_for_global = 1
" latex
let g:vimtex_quickfix_mode = 0
let g:vimtex_compiler_latexmk_engines = {
        \ '_'                : '-xelatex',
        \ 'pdflatex'         : '-pdf',
        \ 'dvipdfex'         : '-pdfdvi',
        \ 'lualatex'         : '-lualatex',
        \ 'xelatex'          : '-xelatex',
        \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
        \ 'context (luatex)' : '-pdf -pdflatex=context',
        \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
        \}


 let g:vimtex_compiler_latexrun_engines = {
        \ '_'                : 'xelatex',
        \ 'pdflatex'         : 'pdflatex',
        \ 'lualatex'         : 'lualatex',
        \ 'xelatex'          : 'xelatex',
        \}   
"Leetcode settings
nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>
nnoremap <leader>li :LeetCodeSignIn<cr>
let g:leetcode_china = 1
let g:leetcode_browser = 'chrome'
" Pandoc Syntax
augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

"vim-tmux-navigator
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'chiel92/vim-autoformat'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'skywind3000/asyncrun.vim'
Plug 'gcmt/wildfire.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yggdroot/leaderf', { 'do': ':leaderfinstallcextension' }
Plug 'preservim/nerdcommenter'
Plug 'alpertuna/vim-header'
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'
Plug 'mbledkowski/neuleetcode.vim'
Plug 'jaywilliams/vim-vwilight'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'Gaochengzhi/vimColorSelector'
call plug#end()

