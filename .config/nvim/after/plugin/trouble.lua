local trouble = require("trouble")

trouble.setup({
	focus = true,
	auto_preview = false,
	open_no_results = true,
	warn_no_results = false,
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
