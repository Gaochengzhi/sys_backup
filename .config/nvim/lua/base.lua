vim.cmd('autocmd!')

vim.scriptencoding = "utf-8"
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- vim.wo.number = true

vim.opt.lazyredraw = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.showmode = false
vim.opt.ai = true -- autoIndent
vim.opt.si = true -- smartIndent

vim.opt.backup = false
vim.opt.wrap = true
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- Finding files
vim.opt.wildignore:append { '*/node_modules' } -- Finding files

vim.cmd([[let &t_Cs = "\e[4:3m]"]])
vim.cmd([[let &t_Ce = "\e[4:0m]"]])




vim.opt.updatetime = 1000
vim.g.mapleader = " "
vim.opt.cmdheight = 1
vim.opt.laststatus = 1
vim.opt.tabstop = 4
vim.opt.sw = 4
vim.opt.history = 200
vim.opt.softtabstop = 4
vim.opt.scrolloff = 10
vim.opt.mouse = "a"


-- vim.opt.shell = 'zsh'
