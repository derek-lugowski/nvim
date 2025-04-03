return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				go = { "gofmt" },
			},
			format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
		})
	end,
}
