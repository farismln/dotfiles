return {
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "github/copilot.vim" },                       -- or zbirenbaum/copilot.lua
            { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
        },
        build = "make tiktoken",                            -- Only on MacOS or Linux
        opts = {
            -- See Configuration section for options
            window = {
                layout = "float",
                width = 0.5,
                height = 0.5,
                relative = "editor",
                title = "Copilot Chat",
                border = "rounded",
                row = 0,
                col = vim.o.columns - math.floor(vim.o.columns * 0.4),   -- Position it at the rightmost side
            },
        },
        -- See Commands section for default commands if you want to lazy load on them
        keys = {
            { "<leader>cc", ":CopilotChatToggle<CR>", desc = "Toggle Copilot Chat" },
        },
        event = "VimEnter", -- enable on startup
    },
}
