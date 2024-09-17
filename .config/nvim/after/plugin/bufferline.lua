require("bufferline").setup({
	highlights = require("catppuccin.groups.integrations.bufferline").get(),
	options = {
		numbers = "buffer_id",
		show_buffer_icons = false,
		show_buffer_close_icons = false,
		separator_style = "thin",
		custom_filter = function(buf_number, buf_numbers)
			--hide netrw filetype
			if vim.bo[buf_number].filetype ~= "" then
				return true
			end
		end,
	},
})

vim.keymap.set("n", "<tab>", ":BufferLineCycleNext<CR>", { desc = "Next buffer", silent = true })
vim.keymap.set("n", "<s-tab>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer", silent = true })
vim.keymap.set("n", "<leader>bb", ":BufferLinePick<CR>", { desc = "Open buffer", silent = true })
vim.keymap.set("n", "<leader>bd", ":BufferLinePickClose<CR>", { desc = "Delete buffer", silent = true })
