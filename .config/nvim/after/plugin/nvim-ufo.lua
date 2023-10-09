vim.o.foldlevel = 99
vim.o.foldcolumn = "1"
vim.o.foldenable = true
vim.o.foldlevelstart = 99
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
vim.keymap.set("n", "K", function()
	local winid = require("ufo").peekFoldedLinesUnderCursor()
	if not winid then
		vim.lsp.buf.hover()
	end
end, { desc = "Hover fold" })

require("ufo").setup({
	open_fold_hl_timeout = 100,
	textprovider_selector = function(bufnr, filetype, buftype)
		return { "treesitter", "indent" }
	end,
})
