-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1


local status, nvim_tree = pcall(require, "nvim-tree")
if (not status) then return end

vim.api.nvim_set_keymap('n', "<Space>b", ":NvimTreeToggle<cr>", { noremap = true, silent = false })

nvim_tree.setup({
    -- sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "h", action = "dir_up" },
                { key = "l", action = "dir_down" },
                { key = "a", action = "rename" },
                { key = "i", action = "create" },
                { key = "<c-b>", action = "" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})
