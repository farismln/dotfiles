return {
  {
    "ThePrimeagen/harpoon",
    keys = {
      { "<leader>a", function() require("harpoon.mark").add_file() end, desc = "Harpoon Add File" },
      { "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon Quick Menu" },
      { "<C-h>", function() require("harpoon.ui").nav_file(1) end, desc = "Harpoon Navigate File 1" },
      { "<C-t>", function() require("harpoon.ui").nav_file(2) end, desc = "Harpoon Navigate File 2" },
      { "<C-n>", function() require("harpoon.ui").nav_file(3) end, desc = "Harpoon Navigate File 3" },
      { "<C-s>", function() require("harpoon.ui").nav_file(4) end, desc = "Harpoon Navigate File 4" },
    },
    config = function()
      require("harpoon").setup()
    end,
  },
}

