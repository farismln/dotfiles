return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",      -- LSP completion source
            "hrsh7th/cmp-buffer",        -- Buffer completions
            "hrsh7th/cmp-path",          -- File path completions
            "hrsh7th/cmp-cmdline",       -- Command-line completions
            "saadparwaiz1/cmp_luasnip",  -- Snippet completions
            "L3MON4D3/LuaSnip",          -- Snippet engine
            "rafamadriz/friendly-snippets", -- Predefined snippets
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")

            require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = {
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
                    ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
                    ["<C-d>"] = cmp.mapping.close(),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                },
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                }, {
                    { name = "buffer" },
                    { name = "path" },
                }),
            })

            -- Use buffer source for `/` and `?`
            cmp.setup.cmdline({ "/", "?" }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = "buffer" },
                },
            })

            -- Use cmdline & path source for `:`
            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = "path" },
                }, {
                    { name = "cmdline" },
                }),
            })

            -- Attach nvim-cmp to LSP capabilities
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            -- -- Update capabilities for LSP servers
            -- local servers = { "lua_ls", "rust_analyzer", "solidity_ls_nomicfoundation" }
            -- for _, server in ipairs(servers) do
            --     lspconfig[server].setup({
            --         capabilities = capabilities,
            --     })
            -- end

            -- Attach to lspconfig default options (used by mason-lspconfig)
            local defaults = lspconfig.util.default_config
            defaults.capabilities = vim.tbl_deep_extend("force", defaults.capabilities, capabilities)
        end,
    },
}

