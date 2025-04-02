return {
	{
            "williamboman/mason.nvim",
	    config = function()
	        require("mason").setup()
	end,
	},
	{
            "williamboman/mason-lspconfig.nvim",
	    config = function()
	        require("mason-lspconfig").setup({
			-- See this page for list of LSPs:
			-- https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers
		        ensure_installed = {
		            "lua_ls",
    			    "gopls",
    			    "pyright",
	            }
	        })
	    end,
	},
	{
            "neovim/nvim-lspconfig",
	    config = function()
		    local lspconfig = require("lspconfig")
		    lspconfig.lua_ls.setup({settings = { Lua = {diagnostics = {globals = {"vim"},},},},})
		    lspconfig.gopls.setup({})
		    lspconfig.pyright.setup({})
	    end,
	},
}
