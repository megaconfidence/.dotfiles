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
		"ts_ls",
		"lua_ls",
		"eslint",
		"svelte",
		"rust_analyzer",
	},
	automatic_installation = true,
})

mason_tool_installer.setup({
	ensure_installed = {
		"stylua",
		-- eslint_d config error thread https://github.com/mfussenegger/nvim-lint/issues/462
		{ "eslint_d", version = "13.1.2" },
		"codelldb",
		"prettier",
		"rust-analyzer",
	},
})
