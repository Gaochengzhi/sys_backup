local n_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = false })
end
local v_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('v', lhs, rhs, { noremap = true, silent = false })
end
local i_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('i', lhs, rhs, { noremap = true, silent = true })
end

n_keymap('q', 'ZZ')
n_keymap('<Space>q', 'q')
n_keymap(';', ':')
n_keymap('s', ':w<cr>')
n_keymap('<S-n>', ':tabn<cr>')
n_keymap('<S-p>', ':tabp<cr>')

--  Do not yank with x
-- n_keymap('x', '"_x')

n_keymap('<Space><Space>', '<C-w>w')


-- Emacs like insert mapping
i_keymap('<c-f>', '<right>')
i_keymap('<c-b>', '<left>')
-- i_keymap('<c-p>', '<up>')
-- i_keymap('<c-n>', '<down>')
i_keymap('<c-a>', '<c-o>I')
i_keymap('<c-e>', '<c-o>A')
i_keymap('<c-d>', '<c-o>daw')

v_keymap('`', ':%s/')
n_keymap('`', ':%s/')


n_keymap('<Space><cr>', ':nohlsearch<cr>')
n_keymap('<Space>cp', ':%y+<cr>')
n_keymap('<Space>ss', ':so %<cr>')
n_keymap('<Space>o', ':!open %<cr>')

-- figlet ASCII Art
n_keymap('<Space>as', ':r !figlet -f roman <Space>')

-- date
n_keymap('<Space>da', '"=strftime("%a %d %b %y")<cr>p')
