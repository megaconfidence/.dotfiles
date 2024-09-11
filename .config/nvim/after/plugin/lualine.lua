require("lualine").setup({
	sections = {
		lualine_c = {
			"filename",
			function()
				return require("lsp-progress").progress()
			end,
		},
	},
	options = {
		theme = "auto",
		component_separators = "",
		section_separators = "",
		icons_enabled = false,
	},
})

-- listen lsp-progress event and refresh lualine
vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
vim.api.nvim_create_autocmd("User", {
	group = "lualine_augroup",
	pattern = "LspProgressStatusUpdated",
	callback = require("lualine").refresh,
})
