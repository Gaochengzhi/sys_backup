local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end


local on_attach = function(client, bufnr)

    -- formating

    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = vim.api.nvim_create_augroup("Format", { clear = true }),
            buffer = bufnr,
            callback = function() vim.lsp.buf.formatting_seq_sync() end
        })
    end

end

vim.diagnostic.config({
    virtual_text = {
        -- source = "always",  -- Or "if_many"
        prefix = 'x', -- Could be '■', '▎', 'x'
    },
    severity_sort = true,
    float = {
        source = "always", -- Or "if_many"
    },
})

vim.diagnostic.open_float()

-- TypeScript
nvim_lsp.tsserver.setup {
    on_attach = on_attach,
    filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript" },
    -- cmd = { "typescript-language-server", "--stdio" }
}

-- lua
nvim_lsp.lua_ls.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false
            }
        }
    }
}

vim.opt.signcolumn = 'yes'
-- Python
require 'lspconfig'.pyright.setup {
    on_attach = on_attach,
    flags = lsp_flags,
}

-- Clangd
require 'lspconfig'.clangd.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {

    }
}
