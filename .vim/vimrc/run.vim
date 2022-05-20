"
"
"---Here are some config for running the script
"
"
noremap tt :call asyncrun#quickfix_toggle(10)<cr>
noremap , :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    :AsyncRun gcc % -o %< ; ./%< ; rm -rf ./%< 
  elseif &filetype == 'cpp'
    :AsyncRun g++ % -std=c++2a  -o %< ; ./%< ; rm -rf ./%< 
  elseif &filetype == 'java'
    :AsyncRun javac % ; time java %<
  elseif &filetype == 'sh'
    :term sh %
  elseif &filetype == 'python'
    :term  python3 %
  elseif &filetype == 'r'
    :term  Rscript %
  elseif &filetype == 'html'
    silent! exec ":AsyncRun " google-chrome-stable " % &"
  elseif &filetype == 'tex'
    silent! exec "VimtexStop"
    silent! exec "VimtexCompile"
  elseif &filetype == 'javascript'
    :term export DEBUG="INFO,ERROR,WARNING" node --trace-warnings .
  elseif &filetype == 'scheme'
    :term guile --no-auto-compile %
  elseif &filetype == 'go'
    :term go run .
  elseif &filetype == 'markdown' 
    "exec \"MarkdownPreview"
    :MarkdownPreviewToggle
  else
    :term lac % 
endif
endfunc
