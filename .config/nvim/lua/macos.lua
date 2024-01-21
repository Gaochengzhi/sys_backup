vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
vim.cmd([[
  autocmd TextYankPost * if v:event.operator == 'y' && v:event.regname == '' | set clipboard=unnamed,unnamedplus | else | set clipboard= | endif
]])
