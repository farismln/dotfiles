return {
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {
            default_file_explorer = true,
            view_options = {
                show_hidden = true,
            },
            win_options = {
                signcolumn = "yes:2",
            },
        },
        -- Optional dependencies
        -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
        lazy = false,
    },
    {
        "refractalize/oil-git-status.nvim",
        dependencies = {
            "stevearc/oil.nvim",
        },
        config = function()
            require('oil-git-status').setup({
                show_ignored = true, -- show files that match gitignore with !!
                symbols = { -- customize the symbols that appear in the git status columns
                    index = {
                        ["!"] = "", -- ignored
                        ["?"] = "?", -- untracked
                        ["A"] = "", -- added
                        ["C"] = "󰆏", -- copied
                        ["D"] = "󰆴", -- deleted
                        ["M"] = "", -- modified
                        ["R"] = "", -- renamed
                        ["T"] = "", -- type changed
                        ["U"] = "", -- unmerged
                        [" "] = " ",
                    },
                    working_tree = {
                        ["!"] = "", -- ignored
                        ["?"] = "?", -- untracked
                        ["A"] = "", -- added
                        ["C"] = "󰆏", -- copied
                        ["D"] = "󰆴", -- deleted
                        ["M"] = "", -- modified
                        ["R"] = "", -- renamed
                        ["T"] = "", -- type changed
                        ["U"] = "", -- unmerged
                        [" "] = " ",
                    },
                },
            })
        end
    }
}
