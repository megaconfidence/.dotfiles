return require('packer').startup(function(use)
  use 'romainl/vim-cool'
  use 'tpope/vim-fugitive'
  use 'folke/trouble.nvim'
  use 'wbthomason/packer.nvim'
  use 'akinsho/bufferline.nvim'
  use 'olimorris/persisted.nvim'
  use 'simrat39/rust-tools.nvim'
  use 'ethanholz/nvim-lastplace'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'christoomey/vim-tmux-navigator'
  use 'HiPhish/rainbow-delimiters.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'

  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  use 'nvim-lua/plenary.nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'aznhe21/actions-preview.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-ui-select.nvim'
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }

  use { 'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make', cond = vim.fn.executable 'make' == 1
  }

  use {
    'patstockwell/vim-monokai-tasty',
    config = function()
      vim.cmd('colorscheme vim-monokai-tasty')
      vim.cmd('let g:vim_monokai_tasty_italic = 1')
    end
  }
  use {
    'windwp/nvim-autopairs',
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    'lewis6991/gitsigns.nvim',
    config = function() require('gitsigns').setup() end
  }
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
end)
