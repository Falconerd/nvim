-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.0",
        -- or                            , branch = "0.1.x",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
    use "nvim-treesitter/playground"
    use "mbbill/undotree"
    use "tpope/vim-fugitive"
    use "ggandor/lightspeed.nvim"
    use {
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            {"neovim/nvim-lspconfig"},
            {"williamboman/mason.nvim"},
            {"williamboman/mason-lspconfig.nvim"},

            -- Autocompletion
            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            {"saadparwaiz1/cmp_luasnip"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"hrsh7th/cmp-nvim-lua"},

            -- Snippets
            {"L3MON4D3/LuaSnip"},
            {"rafamadriz/friendly-snippets"},
        }
    }
    use {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end
    }
    -- Lua
    --use {
    --    "folke/trouble.nvim",
    --    requires = "kyazdani42/nvim-web-devicons",
    --    config = function()
    --        require("trouble").setup {
    --            -- your configuration comes here
    --            -- or leave it empty to use the default settings
    --            -- refer to the configuration section below
    --        }
    --    end
    --}

    use "jose-elias-alvarez/null-ls.nvim"
    use "MunifTanjim/prettier.nvim"

    use "rust-lang/rust.vim"

    use "folke/tokyonight.nvim"
    use "Tetralux/odin.vim"
    use { "terrortylor/nvim-comment",
        config = function()
            require("nvim_comment").setup()
        end
    }
    use({
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        config = function()
            require("lsp_lines").setup()
        end,
    })
    use "ThePrimeagen/harpoon"
    use "m-demare/hlargs.nvim"
    use "danilamihailov/beacon.nvim"
    use "nvim-tree/nvim-web-devicons"
    use "lewis6991/impatient.nvim"
    use "simrat39/rust-tools.nvim"
    use "voldikss/vim-floaterm"
    use "puremourning/vimspector"
end)
