local capabilities = require("cmp_nvim_lsp").default_capabilities()
local get_servers = require("mason-lspconfig").get_installed_servers

local opts = { noremap = true, silent = true }
local on_attach = function(_, bufnr)
	opts.buffer = bufnr

	opts.desc = "See available code actions"
	vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, opts)

	opts.desc = "Smart rename"
	vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)

	opts.desc = "Got to implementation"
	vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, opts)

	opts.desc = "Show hover documentation"
	vim.keymap.set("n", "<leader>ld", vim.lsp.buf.hover, opts)

	opts.desc = "Go to declaration"
	vim.keymap.set("n", "<leader>ldd", vim.lsp.buf.declaration, opts)
end

-- turn off inline diagnostics
vim.diagnostic.config({ virtual_text = false })

-- change the Diagnostic symbols in gutter
local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- apply capabilities to ALL servers
vim.lsp.config("*", { capabilities = capabilities })

-- define global on_attach behavior via Autocommand
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		local bufnr = args.buf
		on_attach(client, bufnr)
	end,
})

-- enable all lsp servers except rust_analyzer
vim.lsp.enable(vim.tbl_filter(function(s)
	return s ~= "rust_analyzer"
end, get_servers()))

-- fix undefined global 'vim'
-- lspconfig["lua_ls"].setup({
-- 	settings = {
-- 		Lua = {
-- 			diagnostics = {
-- 				globals = { "vim" },
-- 			},
-- 		},
-- 	},
-- })

vim.g.rustaceanvim = function()
	local extension_path = vim.env.MASON .. "/packages/codelldb/extension/"
	local codelldb_path = extension_path .. "adapter/codelldb"
	local liblldb_path = extension_path .. "lldb/lib/liblldb"

	-- The liblldb extension is .so for linux and .dylib for macOS
	liblldb_path = liblldb_path .. (vim.loop.os_uname().sysname == "Linux" and ".so" or ".dylib")
	return {
		server = {
			on_attach = on_attach,
			capabilities = capabilities,
		},
		tools = {
			hover_actions = {
				auto_focus = true,
			},
		},
		dap = {
			adapter = require("rustaceanvim.config").get_codelldb_adapter(codelldb_path, liblldb_path),
		},
	}
end
