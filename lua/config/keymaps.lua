local map = vim.keymap.set

map("n", "<Leader>..", "<cmd>Ex<cr>")

-- Telescope
map("n", "<Leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>")

-- LSP
map("n", "<Leader>k", vim.lsp.buf.hover, {})
map("n", "gd", vim.lsp.buf.definition, {})
