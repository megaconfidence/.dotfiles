return require("packer").startup(function(use)
	use("romainl/vim-cool")
	use("tpope/vim-fugitive")
	use("numToStr/Comment.nvim")
	use("christoomey/vim-tmux-navigator")
	use({ "nvim-telescope/telescope.nvim", requires = { "nvim-telescope/telescope-ui-select.nvim" } })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make", cond = vim.fn.executable("make") == 1 })
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- utils
	use("nvim-lua/plenary.nvim")
	use("wbthomason/packer.nvim")

	-- sesson restore
	use("farmergreg/vim-lastplace")
	use({ "olimorris/persisted.nvim" })

	-- colors
	use("nvim-tree/nvim-web-devicons")
	use("HiPhish/rainbow-delimiters.nvim")
	use({
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			vim.cmd.colorscheme("catppuccin-latte")
		end,
	})

	-- debugging
	use({ "rcarriga/nvim-dap-ui", requires = { { "mfussenegger/nvim-dap" }, { "nvim-neotest/nvim-nio" } } })

	-- status signs
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})
	use("kosayoda/nvim-lightbulb")
	use("akinsho/bufferline.nvim")
	use("luukvbaal/statuscol.nvim")
	use("nvim-lualine/lualine.nvim")
	use("WhoIsSethDaniel/lualine-lsp-progress.nvim")

	--folding
	use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })

	-- formatting and linting
	use("stevearc/conform.nvim")
	use("mfussenegger/nvim-lint")

	-- mason
	use({
		"williamboman/mason.nvim",
		requires = {
			{ "williamboman/mason-lspconfig.nvim" },
			{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
		},
	})

	-- treesitter
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("davidmh/mdx.nvim")

	-- lsp
	use("mrcjkb/rustaceanvim")
	use({
		"neovim/nvim-lspconfig",
		requires = {
			{ "hrsh7th/cmp-nvim-lsp" },
		},
	})

	-- completion
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			-- autocompletion
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },

			-- snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },

			-- icon
			{ "onsails/lspkind.nvim" },
		},
	})
end)
