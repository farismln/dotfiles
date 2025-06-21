return {
    {
        'echasnovski/mini.diff',
        version = '*',
        config = function()
            require('mini.diff').setup({
                -- Module mappings. Use `''` (empty string) to disable one.
                mappings = {
                    -- Apply hunks inside a visual/operator region
                    apply = '',
                    -- Reset hunks inside a visual/operator region
                    reset = '',
                    -- Hunk range textobject to be used inside operator
                    -- Works also in Visual mode if mapping differs from apply and reset
                    textobject = '',
                },
            })
        end,
    },
}
