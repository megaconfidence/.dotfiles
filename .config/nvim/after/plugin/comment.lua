-- Native commenting (gc/gcc), with treesitter-aware commentstring (e.g. JSX)
require("ts_context_commentstring").setup({
	enable_autocmd = false,
})

local get_option = vim.filetype.get_option
vim.filetype.get_option = function(filetype, option)
	return option == "commentstring" and require("ts_context_commentstring.internal").calculate_commentstring()
		or get_option(filetype, option)
end

--[[
NORMAL MODE
gcc - Toggles the current line
[count]gcc - Toggles the number of lines given as a prefix-count
gc{motion} - (Op-pending) Toggles the region
gcgc - Uncomments the current comment block

VISUAL MODE
gc - Toggles the region

OPERATOR-PENDING MODE
gc - Text object for a comment block (e.g. dgc)
]]
