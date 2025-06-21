return {
  {
    "tpope/vim-fugitive",
    keys = {
      {
        "<leader>gs",
        function()
          vim.cmd.Git()
        end,
        desc = "Git Status",
      },
    },
    cmd = { "Git", "Gdiffsplit", "Gread", "Gwrite", "Ggrep", "GMove", "GDelete", "GBrowse" },
  },
}

