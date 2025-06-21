return {
  {
    "mbbill/undotree",
    keys = {
      { "<leader>u", vim.cmd.UndotreeToggle, desc = "Toggle UndoTree" },
    },
    cmd = "UndotreeToggle", -- Lazy-loads when the command is executed
    config = function()
      -- Optional configuration can be added here if needed
    end,
  },
}

