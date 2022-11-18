local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

-- local function telescope_buffer_dir()
--     return vim.fn.expand('%:p:h')
-- end

-- local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
    defaults = {
        mappings = {
            n = {
                ["q"] = actions.close

            },
        },
        file_ignore_patterns = { "node%_modules/.*", "Library/.*", "%.git/.*", "%.next/.*" }
    },
}

-- keymaps
vim.keymap.set('n', '<Space>f',
    function()
        builtin.find_files({
            -- no_ignore = false,
            hidden = true
        })
    end)
-- vim.keymap.set('n', '<Space>r', function()
--     builtin.live_grep()
-- end)
-- vim.keymap.set('n', '<Space>b', function()
--     builtin.buffers()
-- end)


vim.keymap.set('n', '<Space>pp', function()
    require "telescope.builtin".lsp_document_symbols({ symbols = { "function", "variable" } })
end)

vim.keymap.set('n', '<Space>t', function()
    builtin.help_tags()
end)
-- vim.keymap.set('n', '<Space><Space>', function()
--     builtin.resume()
-- end)
vim.keymap.set('n', '<Space>e', function()
    builtin.diagnostics()
end)
