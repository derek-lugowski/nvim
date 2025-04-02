local map = vim.keymap.set

map("n", "<Leader>..", "<cmd>Ex<cr>")

-- Telescope
local telescope = require("telescope.builtin")
map("n", "<Leader>ff", telescope.find_files, {desc = "Telescope find files"})
map("n", "<Leader>fg", telescope.live_grep, {desc = "Telescope live grep"})

-- LSP
local lsp = vim.lsp.buf
map("n", "<Leader>k", lsp.hover, {desc = "LSP Hover"})
map("n", "gd", lsp.definition, {desc = "Go to definition"})

-- Moving between window splits
map("n", "<C-k>", "<cmd>wincmd k<cr>", {desc = "move to top split"})
map("n", "<C-j>", "<cmd>wincmd j<cr>", {desc = "move to bottom split"})
