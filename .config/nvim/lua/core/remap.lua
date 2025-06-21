-- Set <Space> as leader
vim.g.mapleader = " "

-- Shorthand mapping function with mnemonic description support
local map = function(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
end

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- change the usual jump into telescope.lua

-- Native LSP
map("n", "gD", vim.lsp.buf.declaration, "[g]o to [D]eclaration")
map("n", "K", vim.lsp.buf.hover, "[K] Hover documentation")
map("n", "<C-k>", vim.lsp.buf.signature_help, "Signature help (<C-k>)")
map("n", "<leader>ca", vim.lsp.buf.code_action, "[c]ode [a]ction")
map("n", "<leader>rn", vim.lsp.buf.rename, "[r]e[n]ame symbol")
map("n", "<leader>f", function()
  vim.lsp.buf.format({ async = true })
end, "[f]ormat buffer")

-- Diagnostics
map("n", "gl", vim.diagnostic.open_float, "Show diagnostic [l]ine")
map("n", "[d", vim.diagnostic.goto_prev, "Previous [d]iagnostic")
map("n", "]d", vim.diagnostic.goto_next, "Next [d]iagnostic")

-- Toggle hlsearch
map("n", "<leader>h", function()
  local status = not vim.opt.hlsearch:get()
  vim.opt.hlsearch = status
  print("Search highlighting " .. (status and "enabled" or "disabled"))
end, "[h]ighlight toggle for search")

