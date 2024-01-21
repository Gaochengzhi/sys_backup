vim.g.firenvim_config = {
    globalSettings = { alt = "all",
        ignoreKeys = {
            all = { '<C-*>', '<S-*>' },
            normal = { '<C-1>', '<C-2>' }
        }


    },
    localSettings = {
        [".*"] = {
            cmdline  = "neovim",
            content  = "text",
            priority = 0,
            selector = "textarea",
            takeover = "never"
        }
    }
}

vim.api.nvim_create_autocmd({ 'UIEnter' }, {
    callback = function(event)
        local client = vim.api.nvim_get_chan_info(vim.v.event.chan).client
        if client ~= nil and client.name == "Firenvim" then
            vim.cmd("colorscheme balance")
            vim.o.laststatus = 0
            vim.o.guifont = "monospace:h35"
        end
    end
})
