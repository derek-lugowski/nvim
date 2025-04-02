vim.keymap.set("n", "<Leader>..", "<cmd>Ex<cr>")

-- Telescope
vim.keymap.set("n", "<Leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>")

-- LSP
vim.keymap.set("n", "<Leader>k", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
