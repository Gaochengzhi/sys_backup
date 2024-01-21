local status, packer = pcall(require, 'packer')
if (not status) then
    print("packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        'glacambre/firenvim',
        run = function() vim.fn['firenvim#install'](0) end
    }

    use 'MetriC-DT/balance-theme.nvim'
    use 'onsails/lspkind-nvim'
    use "hrsh7th/cmp-path"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'neovim/nvim-lspconfig'
    use "rafamadriz/friendly-snippets"
    use 'saadparwaiz1/cmp_luasnip'
    use({ "L3MON4D3/LuaSnip",
        tag = "v<CurrentMajor>.*" })
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'windwp/nvim-autopairs'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use "williamboman/mason.nvim"
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use "williamboman/mason.lspconfig.nvim"
    use 'kyazdani42/nvim-tree.lua'
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
        config = function()
            local saga = require("lspsaga")

            saga.init_lsp_saga({
                -- your configuration
            })
        end,
    })



end)
