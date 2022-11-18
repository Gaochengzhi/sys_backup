local status, LuaSnip = pcall(require, "LuaSnip")
if (not status) then return end

LuaSnip.setup({})

require("luasnip.loaders.from_snipmate").lazy_load({ paths = { "./snippets" } })
require("luasnip.loaders.from_vscode").lazy_load()
