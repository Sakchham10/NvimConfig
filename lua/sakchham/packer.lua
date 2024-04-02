vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }

    }
    use { 'Issafalcon/lsp-overloads.nvim' }
    use { 'stevearc/dressing.nvim' }

    use({
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup()
        end,
    })
    use 'mfussenegger/nvim-lint'
    --Tresitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    --Line indent highlight
    use "lukas-reineke/indent-blankline.nvim"
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'L3MON4D3/LuaSnip' }
    use { "saadparwaiz1/cmp_luasnip" }     -- for autocompletion
    use { "rafamadriz/friendly-snippets" } -- useful snippets
    use { "onsails/lspkind.nvim" }         -- vs-code like pictograms

    use 'folke/tokyonight.nvim'
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
end)
