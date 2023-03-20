local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({
    PATH = "prepend", -- "skip" seems to cause the spawning error
})

lspconfig.setup {
    ensure_installed = { "pyright", "clangd" },
}
