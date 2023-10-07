require("dapui").setup()
local dap, dapui = require("dap"), require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", { silent = true, desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dq", ":DapTerminate<CR>", { silent = true, desc = "Quit debugging" })
vim.keymap.set("n", "<leader>dn", ":DapStepOver<CR>", { silent = true, desc = "Next step" })
vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>", { silent = true, desc = "Continue debugging" })
vim.keymap.set("n", "<leader>du", function()
	require("dapui").toggle()
end, { silent = true, desc = "Toggle debug ui" })
