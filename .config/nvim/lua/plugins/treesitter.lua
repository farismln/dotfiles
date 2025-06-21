return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",  -- Automatically update treesitter parsers when installed
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua", "javascript", "python", "typescript",  -- Existing languages
          "solidity", "rust"  -- Added Solidity and Rust
        },
        highlight = {
          enable = true,  -- Enable syntax highlighting
        },
      })
    end,
    event = { "BufRead", "BufNewFile" },  -- Lazy-loads when opening a file
  },
}

