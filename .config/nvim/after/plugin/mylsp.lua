local lspconfig = require("lspconfig")
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

-- configure all lsp servers except rust_analyzer
for _, server_name in ipairs(get_servers()) do
	if server_name ~= "rust_analyzer" then
		lspconfig[server_name].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
	end
end

-- fix undefined global 'vim'
lspconfig["lua_ls"].setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

local rt = require("rust-tools")
local codelldb = require("mason-registry").get_package("codelldb")
local extension_path = codelldb:get_install_path() .. "/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb"

-- The liblldb extension is .so for linux and .dylib for macOS
liblldb_path = liblldb_path .. (vim.loop.os_uname().sysname == "Linux" and ".so" or ".dylib")

rt.setup({
	dap = {
		adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
	},
	server = {
		on_attach = on_attach,
		capabilities = capabilities,
	},
	tools = {
		hover_actions = {
			auto_focus = true,
		},
	},
})
