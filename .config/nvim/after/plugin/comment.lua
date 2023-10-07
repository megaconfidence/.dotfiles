require("Comment").setup({
	pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
})
--[[
NORMAL MODE
gcc - Toggles the current line using linewise comment
gbc - Toggles the current line using blockwise comment
[count]gcc - Toggles the number of line given as a prefix-count using linewise
[count]gbc - Toggles the number of line given as a prefix-count using blockwise
gc[count]{motion} - (Op-pending) Toggles the region using linewise comment
gb[count]{motion} - (Op-pending) Toggles the region using blockwise comment 
]]

--[[
VISUAL MODE
gc - Toggles the region using linewise comment
gb - Toggles the region using blockwise comment 
]]
