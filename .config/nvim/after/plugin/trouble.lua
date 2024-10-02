local trouble = require("trouble")

trouble.setup({
	focus = true,
	warn_no_results = false,
	open_no_results = true,
	auto_preview = false,
	win = {
		wo = {
			wrap = true,
		},
	},
})

vim.keymap.set(
	{ "n", "v" },
	"<leader>lt",
	"<cmd>Trouble diagnostics toggle<cr>",
	{ silent = true, desc = "Lsp diagnostics" }
)
