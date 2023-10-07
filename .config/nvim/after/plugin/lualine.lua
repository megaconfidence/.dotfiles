require("lualine").setup({
	sections = {
		lualine_c = {
			"filename",
			"lsp_progress",
		},
	},
	options = {
		theme = "auto",
		component_separators = "",
		section_separators = "",
		icons_enabled = false,
	},
})
