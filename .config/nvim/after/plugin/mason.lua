local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_tool_installer = require("mason-tool-installer")

mason.setup({
	ui = {
		icons = {
			package_pending = "➜",
			package_installed = "✓",
			package_uninstalled = "✗",
		},
	},
})

mason_lspconfig.setup({
	-- lsp servers
	ensure_installed = {
		"html",
		"cssls",
		"lua_ls",
		"eslint",
		"tsserver",
		"rust_analyzer",
	},
	automatic_installation = true,
})

mason_tool_installer.setup({
	ensure_installed = {
		"stylua",
		"eslint_d",
		"codelldb",
		"prettier",
		"rust-analyzer",
	},
})
