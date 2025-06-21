return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = false },
        explorer = { enabled = false },
        indent = { enabled = false },
        input = { enabled = true },
        picker = { enabled = true },
        notifier = {
            enabled = true,
            timeout = 3500,
            width = { min = 40, max = 0.4 },
            height = { min = 1, max = 0.6 },
            margin = { top = 0, right = 1, bottom = 0 },
            padding = true,              -- add 1 cell of left/right padding to the notification window
            sort = { "level", "added" }, -- sort by level and time
            -- minimum log level to display. TRACE is the lowest
            -- all notifications are stored in history
            level = vim.log.levels.TRACE,
            icons = {
                error = " ",
                warn = " ",
                info = " ",
                debug = " ",
                trace = " ",
            },
            keep = function(notif)
                return vim.fn.getcmdpos() > 0
            end,
            ---@type snacks.notifier.style
            style = "compact",
            top_down = false,   -- place notifications from top to bottom
            date_format = "%R", -- time format for notifications
            -- format for footer when more lines are available
            -- `%d` is replaced with the number of lines.
            -- only works for styles with a border
            ---@type string|boolean
            more_format = " ↓ %d lines ",
            refresh = 50, -- refresh at most every 50ms
            wo = {
                winblend = 5,
                wrap = true,
                conceallevel = 2,
                colorcolumn = "",
            },
        },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = false },
        statuscolumn = { enabled = false },
        words = { enabled = false },
    },
}
