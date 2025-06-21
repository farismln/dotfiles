return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- Load immediately
    priority = 1000, -- High priority to ensure it loads first
    opts = {
      style = "moon", -- Options: "storm", "night", "day", "moon"
      transparent = true, -- Disable transparent background
      terminal_colors = true, -- Enable terminal colors
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}

