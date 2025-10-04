return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    priority = 1000, -- Load this plugin first
    cmd = "Telescope", -- Lazy-load on :Telescope or mapped keys
    keys = function()
      local builtin = require("telescope.builtin")
      return {
        { "<leader>pf", function() builtin.find_files() end, desc = "[p]roject [f]iles" },
        { "<C-p>",      function() builtin.git_files() end,  desc = "Git Files" },
        {
          "<leader>ps",
          function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
          end,
          desc = "[p]roject [s]earch (grep)",
        },
        { "gd", function() builtin.lsp_definitions() end,     desc = "[g]o to [d]efinition" },
        { "gr", function() builtin.lsp_references() end,      desc = "[g]o to [r]eferences" },
        { "gi", function() builtin.lsp_implementations() end, desc = "[g]o to [i]mplementation" },
      }
    end,
    config = function()
      require("telescope").setup({
        defaults = {
            file_ignore_patterns = { 
                "node_modules", ".git/", ".venv/", "out", "dist", "build",
                "%.lock", "%.json", "%.min.js", "%.png", "%.jpg", "%.jpeg",
                "%.gif", "%.mp4", "%.mp3", "%.zip", "%.tar.gz"},
            },
      })
    end,
  },
}
