local plugins = {
    -- Overriding
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end
    },
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim"
        },
        opts = {
            ensure_installed = {
                "rust-analyzer",
                "typescript-language-server",
                "lua-language-server"
            }
        }
    },
    {
        "folke/which-key.nvim",
        config = function()
            -- require "plugins.configs.whichkey"
            require "custom.configs.whichkey"
        end
    },


    -- custom plugin
    {
        'junegunn/vim-easy-align',
        lazy = false
    },

    {
        "akinsho/toggleterm.nvim",
        cmd = { "ToggleTerm", "TermExec" },
        config = function()
            require "custom.configs.toggleterm"
        end
    },
    {
        'kdheepak/lazygit.nvim',
        cmd = { "LazyGit" }
    }
}

return plugins
