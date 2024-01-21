--   ____               _   _       _
--  / ___| __ _  ___   | \ | |_   _(_)_ __ ___
-- | |  _ / _` |/ _ \  |  \| \ \ / / | '_ ` _ \
-- | |_| | (_| | (_) | | |\  |\ V /| | | | | | |
--  \____|\__,_|\___/  |_| \_| \_/ |_|_| |_| |_|
--
require('base')
require('highlights')
require('maps')
require('plugins')

local has = function(x)
    return vim.fn.has(x) == 1
end

local is_mac = has "macunix"

if is_mac then
    require('macos')
end

vim.cmd('source ~/.config/nvim/vimrc')
