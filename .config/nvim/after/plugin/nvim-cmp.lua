local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	completion = {
		completeopt = "menu,menuone,preview",
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-e>"] = cmp.mapping.abort(),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
	}),

	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),
	-- configure lspkind for vs-code like pictograms in completion menu
	formatting = {
		format = lspkind.cmp_format({
			maxwidth = 50,
			ellipsis_char = "...",
		}),
	},
})
