-- nvim-treesitter main branch: installs parsers only, features are enabled per buffer below
require("nvim-treesitter").install({
	"javascript",
	"typescript",
	"tsx",
	"python",
	"cpp",
	"c",
	"lua",
	"rust",
	"svelte",
	"toml",
})

vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("treesitter_start", { clear = true }),
	callback = function(args)
		if not pcall(vim.treesitter.start, args.buf) then
			return
		end
		if vim.bo[args.buf].filetype ~= "python" then
			vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		end
	end,
})
