return require("packer").startup(function(use)
	use("romainl/vim-cool")
	use("WhoIsSethDaniel/lualine-lsp-progress.nvim")
	use("tpope/vim-fugitive")
	use("folke/trouble.nvim")
	use("nvim-lua/plenary.nvim")
	use("numToStr/Comment.nvim")
	use("wbthomason/packer.nvim")
	use("akinsho/bufferline.nvim")
	use("ethanholz/nvim-lastplace")
	use("nvim-lualine/lualine.nvim")
	use({ "kosayoda/nvim-lightbulb" })
	use("nvim-tree/nvim-web-devicons")
	use({ "olimorris/persisted.nvim" })
	use("christoomey/vim-tmux-navigator")
	use("HiPhish/rainbow-delimiters.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	use({ "nvim-telescope/telescope.nvim", requires = { "nvim-telescope/telescope-ui-select.nvim" } })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make", cond = vim.fn.executable("make") == 1 })
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})
	use({
		"patstockwell/vim-monokai-tasty",
		config = function()
			vim.cmd("colorscheme vim-monokai-tasty")
			vim.cmd("let g:vim_monokai_tasty_italic = 1")
		end,
	})

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

	-- lsp
	use("simrat39/rust-tools.nvim")
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
