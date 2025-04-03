local map = vim.keymap.set

map("n", "<Leader>..", "<cmd>Ex<cr>")

-- Telescope
local telescope = require("telescope.builtin")
map("n", "<Leader>ff", telescope.find_files, { desc = "Telescope find files" })
map("n", "<Leader>fg", telescope.live_grep, { desc = "Telescope live grep" })
map("n", "<Leader>fs", telescope.grep_string, { desc = "Telescope grep string" })
map("n", "<Leader>fn", function() telescope.find_files({ cwd = "~/.config/nvim" }) end,
    { desc = "Telescope find nvim config files" })
map("n", "<Leader>fi", telescope.git_files, { desc = "Telescope find files tracked by git" })

-- LSP
local lsp = vim.lsp.buf
map("n", "<Leader>k", lsp.hover, { desc = "LSP Hover" })
map("n", "gd", lsp.definition, { desc = "Go to definition" })

-- Moving between window splits
map("n", "<C-k>", "<cmd>wincmd k<cr>", { desc = "move to top split" })
map("n", "<C-j>", "<cmd>wincmd j<cr>", { desc = "move to bottom split" })
map("n", "<C-h>", "<cmd>wincmd h<cr>", { desc = "move to left split" })
map("n", "<C-l>", "<cmd>wincmd l<cr>", { desc = "move to right split" })
map("n", "<C-s>", "<cmd>wincmd v<cr>", { desc = "Split file vertically" })
